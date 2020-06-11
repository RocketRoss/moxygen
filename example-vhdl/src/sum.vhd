use work.int_arr.all;

entity sum is
	-- generic (
	-- 	WIDTH : positive
	-- );
	port (
		i_terms : in int_arr_t;--(0 to WIDTH-1);
		o_sum : out integer
	);
end entity;

architecture comb of sum is
begin

	process(i_terms)
		variable s_sum : integer;
	begin
		s_sum := i_terms(0);
		for i in 1 to i_terms'LENGTH(1)-1 loop
			s_sum := s_sum + i_terms(i);
		end loop;
		o_sum <= s_sum;
	end process;

end architecture;

--------------------------------------------------
use work.int_arr.all;

entity sum_tb is
	generic (
		WIDTH : positive := 2
	);
end entity;

architecture behav of sum_tb is
	signal terms : int_arr_t(0 to WIDTH-1) := (others => 1);
	signal summ : integer := 0;
begin
	s : entity work.sum
		-- generic map(
		-- 	WIDTH => WIDTH
		-- )
		port map(
			i_terms => terms,
			o_sum => summ
		);
	
	process
	begin
		wait for 10 ns;
		assert summ = WIDTH report "Test 'sum': Sum of " & integer'image(WIDTH) & " ones is " & integer'image(summ) & " != " & integer'image(WIDTH) & "." severity failure;
		terms(0) <= 0;
		wait for 10 ns;
		assert summ = WIDTH-1 report "Test 'sum': Sum of " & integer'image(WIDTH-1) & " ones is " & integer'image(summ) & " != " & integer'image(WIDTH-1) & "." severity failure;
		terms(0) <= -1;
		wait for 10 ns;
		assert summ = WIDTH-2 report "Test 'sum': Sum of -1 and " & integer'image(WIDTH-1) & " ones is " & integer'image(summ) & " != " & integer'image(WIDTH-2) & "." severity failure;
		
		report "Test 'sum': Success.";
		wait;
	end process;

end architecture;