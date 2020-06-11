use work.int_arr.all;

entity n_macc is
	generic (
		-- WIDTH : positive;
		-- HEIGHT : positive;
		-- N : positive;
		REVERSE_COEFF : boolean := TRUE
	);
	port (
		i_window : in int_3d_t;--(0 to WIDTH-1, 0 to HEIGHT-1, 0 to N-1);
		i_kernel : in int_3d_t;--(0 to WIDTH-1, 0 to HEIGHT-1, 0 to N-1);
		o_n_macc : out int_arr_t--(0 to N-1)
	);

	constant LEN1 : integer := i_window'length(1);
	constant LEN2 : integer := i_window'length(2);
	constant LEN3 : integer := i_window'length(3);
end entity;

architecture behav of n_macc is
	signal s_terms : int_mat_t(0 to LEN1*LEN2-1, 0 to LEN3-1) := (others => (others => 0));
begin
	p : entity work.n_product
	generic map (
		-- WIDTH => WIDTH,
		-- HEIGHT => HEIGHT,
		-- N => N,
		REVERSE_COEFF => REVERSE_COEFF
	)
	port map (
		i_terms => i_window,
		i_coeff => i_kernel,
		o_n_product => s_terms
	);	

	s : entity work.n_sum
		-- generic map(
		-- 	WIDTH => WIDTH*HEIGHT,
		-- 	N => N
		-- )
		port map(
			i_terms => s_terms,
			o_n_sum => o_n_macc
		);
end architecture;

-----------------------------------------------------------------------
use work.int_arr.all;

entity n_macc_caux_tb is
	generic (
		WIDTH : positive := 3;
		HEIGHT : positive := 3;
		N : positive := 2;
		REVERSE_COEFF : boolean := TRUE
	);
end entity;

architecture behav of n_macc_caux_tb is
	
	procedure c_n_conv(kernel : int_3d_t; window : int_3d_t; res : int_arr_t) is
	begin assert false report "c_n_conv VHPI" severity failure; end c_n_conv;
	attribute foreign of c_n_conv : procedure is "VHPIDIRECT n_conv";
	
	procedure c_randFill(dims : integer; arr : int_3d_t) is
	begin assert false report "c_randFill VHPI" severity failure; end c_randFill;
	attribute foreign of c_randFill : procedure is "VHPIDIRECT randFill";

	signal s_window : int_3d_t(0 to WIDTH-1, 0 to HEIGHT-1, 0 to N-1) := (others => (others => (others => 0)));
	signal s_kernel : int_3d_t(0 to WIDTH-1, 0 to HEIGHT-1, 0 to N-1) := (others => (others => (others => 0)));
	signal s_n_macc : int_arr_t(0 to N-1) := (others => 0);
begin

	m : entity work.n_macc
		generic map (
			-- WIDTH => WIDTH,
			-- HEIGHT => HEIGHT,
			-- N => N,
			REVERSE_COEFF => REVERSE_COEFF
		)
		port map (
			i_window => s_window,
			i_kernel => s_kernel,
			o_n_macc => s_n_macc
		);

	process
		variable v_window : int_3d_t(0 to WIDTH-1, 0 to HEIGHT-1, 0 to N-1) := (others => (others => (others => 0)));
		variable v_kernel : int_3d_t(0 to WIDTH-1, 0 to HEIGHT-1, 0 to N-1) := (others => (others => (others => 1)));

		variable res : int_arr_t(0 to N-1) := (others => 0);
	begin
		for t in 0 to 10000 loop

			v_kernel(0, 0, 0) := 0;
			v_kernel(1, 0, 0) := 0;
			v_kernel(0, 1, 0) := 0;

			-- c_randFill(3, v_kernel);
			c_randFill(3, v_window);

			-- for k in v_kernel'range(3) loop
			-- 	for i in v_kernel'range(1) loop
			-- 		for j in v_kernel'range(2) loop
			-- 			report "[" & integer'image(i) & "," & integer'image(j) & "," & integer'image(k) & "] = " & integer'image(v_kernel(i,j,k)) & ".";
			-- 		end loop;
			-- 	end loop;
			-- end loop;

			s_kernel <= v_kernel;
			s_window <= v_window;

			wait for 1 ns;
			c_n_conv(v_kernel, v_window, res);

			for j in 0 to N-1 loop
				assert s_n_macc(j) = res(j) report "Test 'n_macc': Convolution(" & integer'image(j) & ") " & integer'image(s_n_macc(j)) & " != " & integer'image(res(j)) & "." severity failure;	
			end loop;

		end loop;

		report "Test 'n_macc': Success";
		wait;
	end process;

end architecture;