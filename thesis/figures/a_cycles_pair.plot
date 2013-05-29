\begin{figure}[H]
\label{plot:a_cycles_pair}
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
		ylabel = {Arithmetic cycles ratio},
%		symbolic x coords={BenchA, BenchB, BenchC},
		xtick = \empty,			% Prevent x-ticks from being spammed.
		scaled y ticks = false,
		enlarge x limits=0.0,	% Make x-axis larger to properly fit goups
		legend cell align=left,
		legend style={
			column sep=1ex,		% Separation between symbol and text
			anchor=north,
			at={(0.5,-0.15)},
			legend columns=-1	% Present legend in a single line
%			at={(1,1.05)},
%			anchor=south east
		}
	]
%        \addplot[style={rred,fill=rred,mark=none}]
%			coordinates {(0, 0.666666667-1) (2, 0.750000000-1) (2, 1.093)};
		\addplot[sharp plot, style={ggreen, mark size=1.5, ultra thick}] coordinates
			{(0, 0.947368421) (1, 0.966666667) (2, 0.980392157) (3, 0.980392157)
			(4, 1) (5, 1) (6, 1) (7, 1) (8, 1) (9, 1) (10, 1) (11, 1) (12, 1)
			(13, 1) (14, 1.076923077) (15, 1.088235294) (16, 1.088235294) (17, 1.125)};

%        \legend{LLVM based}
    \end{axis}
\end{tikzpicture}
\caption[Arithmetic cycles for shaders modified by pair based vectorization]{Arithmetic cycle benchmark comparing the performance of shaders changed by pair based vectorization to their unvectorized equivalents.}
\end{figure}