\begin{figure}[H]
\label{plot:w_reg_pair}
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
		\addplot[sharp plot, style={ggreen, mark size=1.5, ultra thick}] coordinates
			{(0, 0.666666667) (1, 0.750000000) (2, 1) (3, 1) (4, 1) (5, 1) (6, 1) (7, 1)
			 (8, 1) (9, 1) (10, 1) (11, 1) (12, 1) (13, 1) (14, 1) (15, 1) (16, 1)
			 (17, 1.33333)};

%        \legend{Pair based}
    \end{axis}
\end{tikzpicture}
\caption[Register usage for shaders modified by pair based vectorization]{Register usage benchmark comparing the performance of shaders changed by pair based vectorization to their unvectorized equivalents.}
\end{figure}