\begin{figure}[H]
\label{plot:w_reg_llvm}
\begin{tikzpicture}
    \begin{axis}[
		width  = 0.85*\textwidth,
		height = 6.5cm,
		major x tick style = transparent,
%		ybar=2*\pgflinewidth,	% No space between bars, use when bar borders are overlapping
		ybar=0pt,				% No space between bars, use if ybar=2*\pgflinewidth is causing issues
		bar width=3pt,
%		ymin=0.95,
		ymajorgrids = true,
		major grid style={black!50},
		yminorgrids = true,
		minor y tick num={1},	% Set how many minor ticks to use per major tick
		minor grid style={gray!25},
		ylabel = {Register usage ratio},
%		symbolic x coords={BenchA, BenchB, BenchC},
		xtick = \empty,			% Prevent x-ticks from being spammed.
		scaled y ticks = false,
		enlarge x limits=0.0,	% Make x-axis larger to properly fit goups
		legend cell align=left,
		legend style={
			column sep=1ex,		% Separation between symbol and text
			anchor=north,
			at={(0.5,-0.05)},
			legend columns=-1	% Present legend in a single line
%			at={(1,1.05)},
%			anchor=south east
		}
	]
%        \addplot[style={rred,fill=rred,mark=none}]
%			coordinates {(0, 0.666666667-1) (2, 0.750000000-1) (2, 1.093)};
		\addplot[sharp plot, style={rred, mark size=1.5, ultra thick}] coordinates
			{
				(0, 0.428571429) (1, 0.428571429) (2, 0.428571429)
				(3, 0.500000000) (4, 0.500000000) (5, 0.500000000) (6, 0.500000000) (7, 0.500000000) (8, 0.500000000)
				(9, 0.571428571) (10, 0.571428571) (11, 0.571428571) (12, 0.571428571) (13, 0.571428571)
				(14, 0.666666667) (15, 0.666666667) (16, 0.666666667) (17, 0.666666667)	(18, 0.666666667) (19, 0.666666667) (20, 0.666666667) (21, 0.666666667) (22, 0.666666667) (23, 0.666666667) (24, 0.666666667) (25, 0.666666667) 	(26, 0.666666667) (27, 0.666666667) (28, 0.666666667) (29, 0.666666667)	(30, 0.666666667) (31, 0.666666667) (32, 0.666666667)
				(33, 0.750000000) (34, 0.750000000) (35, 0.75000000) (36, 0.75000000) (37, 0.75000000) (38, 0.75000000) (39, 0.75000000) (40, 0.75000000) (41, 0.75000000) (42, 0.75000000) (43, 0.75000000) (44, 0.75000000)
				(45, 0.800000000) (46, 0.800000000)
				(47, 0.875000000) (48, 0.875000000) (49, 0.875000000) (50,0.875000000)
				(51, 1.0) (52, 1.0) (53, 1.0) (54, 1.0) (55, 1.0) (55, 1.0) (56, 1.0) (57, 1.0) (58, 1.0) (59, 1.0) (60, 1.0) (61, 1.0) (62, 1.0) (63, 1.0) (64, 1.0) (65, 1.0) (66, 1.0) (67, 1.0) (68, 1.0) (69, 1.0) (70, 1.0) (71, 1.0) (72, 1.0) (73, 1.0) (74, 1.0) (75, 1.0) (76, 1.0) (77, 1.0) (78, 1.0) (79, 1.0) (80, 1.0) (81, 1.0) (82, 1.0) (83, 1.0) (84, 1.0) (85, 1.0) (86, 1.0) (87, 1.0)	(88, 1.0) (89, 1.0) (90, 1.0) (91, 1.0) (92, 1.0) (93, 1.0) (94, 1.0) (95, 1.0) (96, 1.0) (97, 1.0) (98, 1.0) (99, 1.0) (100, 1.0) (101, 1.0) (102, 1.0) (103, 1.0) (104, 1.0) (105, 1.0) (106, 1.0) (107, 1.0) (108, 1.0) (109, 1.0) (110, 1.0) (111, 1.0) (112, 1.0) (113, 1.0) (114, 1.0) (115, 1.0) (116, 1.0) (117, 1.0) (118, 1.0) (119, 1.0) (120, 1.0) (121, 1.0)
				(122, 1.055555556) (123, 1.055555556)
				(124, 1.142857143)
				(125, 1.166666667) (126, 1.166666667)
				(127, 1.300000000) (128, 1.300000000) (129, 1.300000000)
				(130, 1.333333333) (131, 1.333333333) (132, 1.333333333) (133, 1.333333333) (134, 1.333333333)
				(135, 1.500000000) (136, 1.500000000)	(137, 1.500000000) (138, 1.500000000)
				(139, 2.000000000) (140, 2.000000000)	(141, 2.000000000) (142, 2.000000000)	(143, 2.000000000)
			};

%        \legend{LLVM based}
    \end{axis}
\end{tikzpicture}
\caption[Register usage for shaders modified by llvm based vectorization]{Register usage benchmark comparing the performance of shaders changed by llvm based vectorization to their unvectorized equivalents.}
\end{figure}