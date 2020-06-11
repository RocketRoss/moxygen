use work.int_arr.all;

entity slide is
	generic (
		WINDOW_SIZE 	: int_arr_t(0 to 1);
		WINDOW_STRIDE : int_arr_t(0 to 1)
	);
	port (
		i_in 						: in int_mat_t;
		o_windows 			: out int_3d_t
	);

	constant IN_LEN1 : integer := i_in'length(1);
	constant IN_LEN2 : integer := i_in'length(2);
	constant WINDOW_COUNT_1 : integer := 1 + (IN_LEN1 - WINDOW_SIZE(0)/WINDOW_STRIDE(0));
	constant WINDOW_COUNT_2 : integer := 1 + (IN_LEN2 - WINDOW_SIZE(1)/WINDOW_STRIDE(1));
	-- constant WINDOW_COUNT : integer := WINDOW_COUNT_1*WINDOW_COUNT_2;
end entity;

architecture comb of slide is
	
begin
	gen_w1 : for c1 in 0 to WINDOW_COUNT_1-1 generate
		gen_w2 : for c2 in 0 to WINDOW_COUNT_2-1 generate

			gen_wj : for j in 0 to WINDOW_SIZE(0)-1 generate
				gen_wk : for k in 0 to WINDOW_SIZE(0)-1 generate

					o_windows(j, k, c1*WINDOW_COUNT_2+c2) <= i_in(c1*WINDOW_STRIDE(0)+j, c2*WINDOW_STRIDE(1) + k);
				end generate gen_wk;
			end generate gen_wj;

		end generate gen_w2;
	end generate gen_w1;

end architecture;
-----------------------------------------------------------
use work.int_arr.all;

entity slide_tb_caux is
	generic (
		WINDOW_SIZE 	: int_arr_t(0 to 1) := (2, 2);
		WINDOW_STRIDE : int_arr_t(0 to 1) := (2, 2);
		IN_SIZE 	: int_arr_t(0 to 1) := (8, 8)
	);

	constant IN_LEN1 : integer := IN_SIZE(0);
	constant IN_LEN2 : integer := IN_SIZE(1);
	constant WINDOW_COUNT_1 : integer := 1 + (IN_LEN1 - WINDOW_SIZE(0)/WINDOW_STRIDE(0));
	constant WINDOW_COUNT_2 : integer := 1 + (IN_LEN2 - WINDOW_SIZE(1)/WINDOW_STRIDE(1));
	constant WINDOW_COUNT : integer := WINDOW_COUNT_1*WINDOW_COUNT_2;
end entity;

architecture behav of slide_tb_caux is
	signal s_in : int_mat_t(0 to IN_LEN1-1, 0 to IN_LEN2-1) := (others => (others => 0));
	signal s_windows : int_3d_t(0 to WINDOW_SIZE(0)-1, 0 to WINDOW_SIZE(1)-1, 0 to WINDOW_COUNT-1) := (others => (others => (others => 0)));
begin
	s : entity work.slide
		generic map (
			WINDOW_SIZE => WINDOW_SIZE,
			WINDOW_STRIDE => WINDOW_STRIDE
		)
		port map (
			i_in => s_in,
			o_windows => s_windows
		);

	

end architecture;