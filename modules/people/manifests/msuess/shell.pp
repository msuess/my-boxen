class people::msuess::shell {

  include iterm2::stable
  include zsh

  iterm2::colors { 'hybrid':
    ansi_0_color        => [0.1665644645690918, 0.1818026602268219, 0.20179691910743713],
    ansi_1_color        => [0.72003227469999997, 0.30211547020000001, 0.31569483879999999],
    ansi_2_color        => [0.70226675270000005, 0.74809849260000005, 0.35396462680000002],
    ansi_3_color        => [0.89336264133453369, 0.71015834808349609, 0.36974489688873291],
    ansi_4_color        => [0.43031883239746094, 0.56596899032592773, 0.69103837013244629],
    ansi_5_color        => [0.63015031814575195, 0.49495330452919006, 0.67327117919921875],
    ansi_6_color        => [0.49952495098114014, 0.74725800752639771, 0.70492839813232422],
    ansi_7_color        => [0.7101062536239624, 0.72398024797439575, 0.71428978443145752],
    ansi_8_color        => [0.11482735723257065, 0.12020024657249451, 0.13228283822536469],
    ansi_9_color        => [0.5527348518371582, 0.17900724709033966, 0.19629062712192535],
    ansi_10_color       => [0.47279784079999998, 0.51726025340000004, 0.1934914291],
    ansi_11_color       => [0.8995583653, 0.53968650100000004, 0.31311613319999998],
    ansi_12_color       => [0.29605811834335327, 0.420734703540802, 0.53338390588760376],
    ansi_13_color       => [0.43185719847679138, 0.31322062015533447, 0.47512847185134888],
    ansi_14_color       => [0.30198413133621216, 0.48341637849807739, 0.45474731922149658],
    ansi_15_color       => [0.35304740071296692, 0.38266518712043762, 0.41454979777336121],
    background_color    => [0.086937598884105682, 0.092142701148986816, 0.097707755863666534],
    bold_color          => [0.71933764219284058, 0.73781722784042358, 0.72798359394073486],
    cursor_color        => [0.71933764219284058, 0.73781722784042358, 0.72798359394073486],
    cursor_text_color   => [0.11772145330905914, 0.12312769144773483, 0.13528014719486237],
    foreground_color    => [0.71933764219284058, 0.73781722784042358, 0.72798359394073486],
    selected_text_color => [0.71933764219284058, 0.73781722784042358, 0.72798359394073486],
    selection_color     => [0.11772145330905914, 0.12312769144773483, 0.13528014719486237],
  }
}