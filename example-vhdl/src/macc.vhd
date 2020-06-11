use work.int_arr.all;

entity macc is
	generic (
		-- WIDTH : positive;
		-- HEIGHT : positive;
		REVERSE_COEFF : boolean := TRUE
	);
	port (
		i_window : in int_mat_t;--(0 to WIDTH-1, 0 to HEIGHT-1);
		i_kernel : in int_mat_t;--(0 to WIDTH-1, 0 to HEIGHT-1);
		o_macc : out integer
	);
end entity;

architecture behav of macc is
	signal s_terms : int_arr_t(0 to i_window'length(1)*i_window'length(2)-1) := (others => 0);
begin
	p : entity work.product
	generic map (
		-- WIDTH => i_window'length(1),
		-- HEIGHT => i_window'length(2),
		REVERSE_COEFF => REVERSE_COEFF
	)
	port map (
		i_terms => i_window,
		i_coeff => i_kernel,
		o_product => s_terms
	);	

	s : entity work.sum
		-- generic map(
		-- 	WIDTH => i_window'length(1)*i_window'length(2)
		-- )
		port map(
			i_terms => s_terms,
			o_sum => o_macc
		);
end architecture;

-----------------------------------------------------------------------
use work.int_arr.all;

entity macc_caux_tb is
	generic (
		WIDTH : positive := 3;
		HEIGHT : positive := 3;
		REVERSE_COEFF : boolean := TRUE
	);
end entity;

architecture behav of macc_caux_tb is
	
	function c_conv(kernel : int_mat_t; window : int_mat_t) return integer is
	begin assert false report "c_conv VHPI" severity failure; end c_conv;
	attribute foreign of c_conv : function is "VHPIDIRECT conv";
	
	procedure c_randFill(dims : integer; mat : int_mat_t) is
	begin assert false report "c_randFill VHPI" severity failure; end c_randFill;
	attribute foreign of c_randFill : procedure is "VHPIDIRECT randFill";

	signal s_window : int_mat_t(0 to WIDTH-1, 0 to HEIGHT-1) := (others => (others => 0));
	signal s_kernel : int_mat_t(0 to WIDTH-1, 0 to HEIGHT-1) := (others => (others => 0));
	signal s_macc : integer := 0;
begin

	m : entity work.macc 
		generic map (
			-- WIDTH => WIDTH,
			-- HEIGHT => HEIGHT,
			REVERSE_COEFF => REVERSE_COEFF
		)
		port map (
			i_window => s_window,
			i_kernel => s_kernel,
			o_macc => s_macc
		);

	process
		variable v_window : int_mat_t(0 to WIDTH-1, 0 to HEIGHT-1) := (others => (others => 0));
		variable v_kernel : int_mat_t(0 to WIDTH-1, 0 to HEIGHT-1) := (others => (others => 0));

		variable res : integer;
	begin
		for i in 0 to 10000 loop

			c_randFill(2, v_kernel);
			c_randFill(2, v_window);

			s_kernel <= v_kernel;
			s_window <= v_window;

			wait for 1 ns;
			res :=  c_conv(v_kernel, v_window);
			-- report "Convolution " & integer'image(s_macc) & " == " & integer'image(res) & ".";
			assert s_macc = res report "Test 'macc': Convolution " & integer'image(s_macc) & " != " & integer'image(res) & "." severity failure;

		end loop;

		report "Test 'macc': Success";
		wait;
	end process;

end architecture;