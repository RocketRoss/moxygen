use work.int_arr.all;

entity n_sum is
	-- generic (
	-- 	WIDTH : positive;
	-- 	N : positive
	-- );
	port (
		i_terms : in int_mat_t;--(0 to WIDTH-1, 0 to N-1);
		o_n_sum : out int_arr_t--(0 to N-1)
	);
end entity;

architecture comb of n_sum is
begin

	process(i_terms)
		variable s_n_sum : integer;
	begin
		for j in i_terms'range(2) loop
			s_n_sum := i_terms(0, j);
			for i in 1 to i_terms'length(1)-1 loop
				-- report "("& integer'image(i) &","& integer'image(j) &") " & integer'image(s_n_sum) & " += " & integer'image(i_terms(i, j));
				s_n_sum := s_n_sum + i_terms(i, j);
			end loop;
			o_n_sum(j) <= s_n_sum;
		end loop;
	end process;

end architecture;

--------------------------------------------------
use work.int_arr.all;

entity n_sum_tb is
	generic (
		WIDTH : positive := 2;
		N : positive := 2
	);
end entity;

architecture behav of n_sum_tb is
	signal terms : int_mat_t(0 to WIDTH-1, 0 to N-1) := (others => (others => 1));
	signal n_summ : int_arr_t(0 to N-1) := (others => 0);
begin
	s : entity work.n_sum
		-- generic map(
		-- 	WIDTH => WIDTH,
		-- 	N => N
		-- )
		port map(
			i_terms => terms,
			o_n_sum => n_summ
		);
	
	--! Test the behaviour of n_sum
	process
	begin
		for i in 0 to N-1 loop
			wait for 10 ns;
			assert n_summ(i) = WIDTH report "Test 'n_sum': n_Sum(" & integer'image(i) & ") of " & integer'image(WIDTH) & " ones is " & integer'image(n_summ(i)) & " != " & integer'image(WIDTH) & "." severity failure;
			terms(0, i) <= 0;
			wait for 10 ns;
			assert n_summ(i) = WIDTH-1 report "Test 'n_sum': n_Sum(" & integer'image(i) & ") of " & integer'image(WIDTH-1) & " ones is " & integer'image(n_summ(i)) & " != " & integer'image(WIDTH-1) & "." severity failure;
			terms(0, i) <= -1;
			wait for 10 ns;
			assert n_summ(i) = WIDTH-2 report "Test 'n_sum': n_Sum(" & integer'image(i) & ") of -1 and " & integer'image(WIDTH-1) & " ones is " & integer'image(n_summ(i)) & " != " & integer'image(WIDTH-2) & "." severity failure;
		end loop;
		
		report "Test 'n_sum': Success.";
		wait;
	end process;

end architecture;