use work.int_arr.all;

entity n_product is
	generic (
		-- WIDTH : positive;
		-- HEIGHT : positive;
		-- N : positive;
		REVERSE_COEFF : boolean
	);
	port (
		i_terms : in int_3d_t;--(0 to WIDTH-1, 0 to HEIGHT-1, 0 to N-1);
		i_coeff : in int_3d_t;--(0 to WIDTH-1, 0 to HEIGHT-1, 0 to N-1);
		o_n_product : out int_mat_t--(0 to WIDTH*HEIGHT-1, 0 to N-1)
	);

	constant LEN1 : integer := i_terms'length(1);
	constant LEN2 : integer := i_terms'length(2);
	constant LEN3 : integer := i_terms'length(3);
end entity;

architecture comb of n_product is
begin
	gen_fk : for k in 0 to LEN3-1 generate
		gen_f : for i in 0 to LEN1-1 generate
			gen_fj : for j in 0 to LEN2-1 generate
				gen_conv : if REVERSE_COEFF generate
					o_n_product(i*LEN2 + j, k) <= i_coeff(LEN1-1-i,LEN2-1-j,k) * i_terms(i,j,k);
				end generate;
				gen_corr : if not REVERSE_COEFF generate
					o_n_product(i*LEN2 + j, k) <= i_coeff(i,j,k) * i_terms(i,j,k);
				end generate;
			end generate;
		end generate;
	end generate;
end architecture;

----------------------------------------------------
use work.int_arr.all;

entity n_product_tb is
	generic (
		WIDTH : positive := 3;
		HEIGHT : positive := 3;
		N : positive := 3;
		REVERSE_COEFF : boolean := FALSE
	);
end entity;

architecture behav of n_product_tb is
	signal s_terms : int_3d_t(0 to WIDTH-1, 0 to HEIGHT-1, 0 to N-1) := (others => (others => (others => 1)));
	signal s_coeff : int_3d_t(0 to WIDTH-1, 0 to HEIGHT-1, 0 to N-1) := (others => (others => (others => 0)));
	signal s_n_product : int_mat_t(0 to WIDTH*HEIGHT-1, 0 to N-1);
begin

	p : entity work.n_product
		generic map (
			-- WIDTH => WIDTH,
			-- HEIGHT => HEIGHT,
			-- N => N,
			REVERSE_COEFF => REVERSE_COEFF
		)
		port map (
			i_terms => s_terms,
			i_coeff => s_coeff,
			o_n_product => s_n_product
		);	

	process
	begin
		for i in 0 to WIDTH-1 loop
			for j in 0 to HEIGHT-1 loop
				for k in 0 to N-1 loop
					s_terms(i,j,k) <= i;
					s_coeff(i,j,k) <= j*k;
					wait for 10 ns;
					assert s_n_product(i*HEIGHT + j, k) = i*j*k report "Test 'n_product': n_Product(" & integer'image(k) & ") " & integer'image(i) & "*" & integer'image(j) & " = " &integer'image(s_n_product(i*HEIGHT + j, k)) & " != " & integer'image(i*j*k) & "." severity failure;
				end loop;
			end loop;
		end loop;

		report "Test 'n_product': Success.";
		wait;
	end process;

end architecture;