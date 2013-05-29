\begin{figure}[H]
\label{plot:a_cycles_combined}
\begin{tikzpicture}
    \begin{axis}[
		width  = 0.85*\textwidth,
		height = 6.5cm,
		major x tick style = transparent,
%		ybar=2*\pgflinewidth,	% No space between bars, use when bar borders are overlapping
		ybar=0pt,				% No space between bars, use if ybar=2*\pgflinewidth is causing issues
		bar width=3pt,
		ymin=0.5,
		ymax=1.75,
		ymajorgrids = true,
		major grid style={black!50},
		yminorgrids = true,
		minor y tick num={1},	% Set how many minor ticks to use per major tick
		minor grid style={gray!25},
		ylabel = {Arithmetic cycles ratio},
%		symbolic x coords={BenchA, BenchB, BenchC},
		xtick = \empty,			% Prevent x-ticks from being spammed.
		scaled y ticks = false,
		enlarge x limits=0.0,	% Make x-axis larger to properly fit goups
		legend cell align=left,
		legend style={
			column sep=1ex,		% Separation between symbol and text
			anchor=north,
			at={(0.30,-0.05)},
			legend columns=-1	% Present legend in a single line
%			at={(1,1.05)},
%			anchor=south east
		}
	]
%        \addplot[style={rred,fill=rred,mark=none}]
%			coordinates {(0, 0.666666667-1) (2, 0.750000000-1) (2, 1.093)};
		\addplot[sharp plot, mark=|, style={rred, mark size=2, ultra thick}] coordinates
			{
				(0, 0.666666667) (1, 0.666666667) (2, 0.666666667) (3, 0.666666667) (4, 0.666666667) (5, 0.666666667)
				(6, 0.777777778) (7, 0.777777778)
				(8, 0.8) (9, 0.8)
				(10, 0.843137255)
				(11, 0.857142857)
				(12, 0.862745098) (13, 0.862745098) (14, 0.862745098)
				(15, 0.875000000)
				(16, 0.888888889) (17, 0.888888889)
				(18, 0.900000000) (19, 0.900000000)
				(20, 0.904761905) (21, 0.904761905)
				(22, 0.909090909) (23, 0.909090909)
				(24, 0.923076923) (25, 0.923076923)
				(26, 0.925925926)
				(27, 0.933333333)
				(28, 0.941176471) (29, 0.941176471)
				(30, 0.973684211) (31, 0.973684211)
				(32, 1.0) (33, 1.0) (34, 1.0) (35, 1.0) (36, 1.0) (37, 1.0) (38, 1.0) (39, 1.0) (40, 1.0) (41, 1.0) (42, 1.0) (43, 1.0) (44, 1.0) (45, 1.0) (46, 1.0) (47, 1.0) (48, 1.0) (49, 1.0) (50, 1.0) (51, 1.0) (52, 1.0) (53, 1.0) (54, 1.0) (55, 1.0) (55, 1.0) (56, 1.0) (57, 1.0) (58, 1.0) (59, 1.0) (60, 1.0) (61, 1.0) (62, 1.0) (63, 1.0) (64, 1.0) (65, 1.0) (66, 1.0) (67, 1.0)
				(68, 1.037037037) (69, 1.037037037)
				(70, 1.047619048) (71, 1.047619048)
				(72, 1.052631579) (73, 1.052631579)
				(74, 1.055555556) (75, 1.055555556)
				(76, 1.058823529) (77, 1.058823529) (78, 1.058823529)
				(79, 1.071428571)
				(80, 1.076923077) (81, 1.076923077) (82, 1.076923077)
				(83, 1.078431373)
				(84, 1.078947368) (85, 1.078947368)
				(86, 1.083333333)
				(87, 1.100000000)
				(88, 1.117647059) (89, 1.117647059) (90, 1.117647059) (91, 1.117647059)
				(92, 1.120000000)
				(93, 1.121951220)
				(94, 1.125000000) (95, 1.125000000) (96, 1.125000000)
				(97, 1.131578947)
				(98, 1.142857143) (99, 1.142857143) (100, 1.142857143) (101, 1.142857143) (102, 1.142857143)
				(103, 1.153846154)
				(104, 1.157894737) (105, 1.157894737)
				(106, 1.166666667) (107, 1.166666667) (108, 1.166666667) (109, 1.166666667) (110, 1.166666667)
				(111, 1.173913043) (112, 1.173913043)
				(113, 1.187500000)
				(114, 1.200000000)
				(115, 1.238095238) (116, 1.238095238)
				(117, 1.250000000) (118, 1.250000000) (119, 1.250000000) (120, 1.250000000) (121, 1.250000000)
				(122, 1.263157895)
				(123, 1.277777778) (124, 1.277777778) (125, 1.277777778) (126, 1.277777778)
				(127, 1.285714286) (128, 1.285714286)
				(129, 1.300000000) (130, 1.300000000)
				(131, 1.304347826) (132, 1.304347826)
				(133, 1.333333333) (134, 1.333333333) (135, 1.333333333) (136, 1.333333333)
				(137, 1.416666667) (138, 1.416666667)
				(139, 1.444444444)
				(140, 1.461538462)
				(141, 1.470588235) (142, 1.470588235)
				(143, 1.666666667) (144, 1.666666667)
			};

        \legend{LLVM based}
    \end{axis}

    \begin{axis}[
		width  = 0.85*\textwidth,
		height = 6.5cm,
		major x tick style = transparent,
%		ybar=2*\pgflinewidth,	% No space between bars, use when bar borders are overlapping
		ybar=0pt,				% No space between bars, use if ybar=2*\pgflinewidth is causing issues
		bar width=3pt,
		ymin=0.5,
		ymax=1.75,
		ymajorgrids = false,
		major grid style={black!50},
		yminorgrids = false,
		minor y tick num={1},	% Set how many minor ticks to use per major tick
		minor grid style={gray!25},
		ylabel = {Arithmetic cycles ratio},
%		symbolic x coords={BenchA, BenchB, BenchC},
		xtick = \empty,			% Prevent x-ticks from being spammed.
		scaled y ticks = false,
		enlarge x limits=0.0,	% Make x-axis larger to properly fit goups
		legend cell align=left,
		legend style={
			column sep=1ex,		% Separation between symbol and text
			anchor=north,
			at={(0.70,-0.05)},
			legend columns=-1	% Present legend in a single line
%			at={(1,1.05)},
%			anchor=south east
		}
	]
%        \addplot[style={rred,fill=rred,mark=none}]
%			coordinates {(0, 0.666666667-1) (2, 0.750000000-1) (2, 1.093)};
		\addplot[sharp plot, mark=*, style={ggreen, mark size=1.5, ultra thick}] coordinates
			{(0, 0.947368421) (1, 0.966666667) (2, 0.980392157) (3, 0.980392157)
			(4, 1) (5, 1) (6, 1) (7, 1) (8, 1) (9, 1) (10, 1) (11, 1) (12, 1)
			(13, 1) (14, 1.076923077) (15, 1.088235294) (16, 1.088235294) (17, 1.125)};

        \legend{Pair based}
    \end{axis}
\end{tikzpicture}
\caption[Arithmetic cycles for vectorized shaders]{Arithmetic cycle benchmark comparing the performance of shaders changed by vectorization to their unvectorized equivalents.}
\end{figure}