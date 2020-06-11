use work.int_arr.all;

entity product is
	generic (
		-- WIDTH : positive;
		-- HEIGHT : positive;
		REVERSE_COEFF : boolean
	);
	port (
		i_terms : in int_mat_t;--(0 to WIDTH-1, 0 to HEIGHT-1);
		i_coeff : in int_mat_t;--(0 to WIDTH-1, 0 to HEIGHT-1);
		o_product : out int_arr_t--(0 to WIDTH*HEIGHT-1)
	);

	constant LEN1 : integer := i_terms'length(1);
	constant LEN2 : integer := i_terms'length(2);
end entity;

architecture comb of product is
begin
	gen_f : for i in i_terms'range(1) generate
		gen_fi : for j in i_terms'range(2) generate
			gen_conv : if REVERSE_COEFF generate
				o_product(i*LEN2 + j) <= i_coeff(LEN1-1-i,LEN2-1-j) * i_terms(i,j);
			end generate;
			gen_corr : if not REVERSE_COEFF generate
				o_product(i*LEN2 + j) <= i_coeff(i,j) * i_terms(i,j);
			end generate;
		end generate;
	end generate;
end architecture;

----------------------------------------------------
use work.int_arr.all;

entity product_tb is
	generic (
		WIDTH : positive := 3;
		HEIGHT : positive := 3;
		REVERSE_COEFF : boolean := FALSE
	);
end entity;

architecture behav of product_tb is
	signal s_terms : int_mat_t(0 to WIDTH-1, 0 to HEIGHT-1) := (others => (others => 1));
	signal s_coeff : int_mat_t(0 to WIDTH-1, 0 to HEIGHT-1) := (others => (others => 0));
	signal s_product : int_arr_t(0 to WIDTH*HEIGHT-1);
begin

	p : entity work.product
		generic map (
			-- WIDTH => WIDTH,
			-- HEIGHT => HEIGHT,
			REVERSE_COEFF => REVERSE_COEFF
		)
		port map (
			i_terms => s_terms,
			i_coeff => s_coeff,
			o_product => s_product
		);	

	process
	begin
		for i in 0 to WIDTH-1 loop
			for j in 0 to HEIGHT-1 loop
				s_terms(i,j) <= i;
				s_coeff(i,j) <= j;
				wait for 10 ns;
				assert s_product(i*HEIGHT + j) = i*j report "Test 'product': Product " & integer'image(i) & "*" & integer'image(j) & " = " &integer'image(s_product(i*HEIGHT + j)) & " != " & integer'image(i*j) & "." severity failure;
			end loop;
		end loop;

		report "Test 'product': Success.";
		wait;
	end process;

end architecture;