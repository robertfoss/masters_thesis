\begin{figure}[H]
\label{plot:cmp_time}
\begin{tikzpicture}
    \begin{axis}[
		width  = 0.85*\textwidth,
		height = 6.5cm,
		major x tick style = transparent,
%		ybar=2*\pgflinewidth,	% No space between bars, use when bar borders are overlapping
		ybar=0pt,				% No space between bars, use if ybar=2*\pgflinewidth is causing issues
		bar width=14pt,
		ymin=0.98,
		ymajorgrids = true,
		major grid style={black!50},
		yminorgrids = true,
		minor y tick num={1},	% Set how many minor ticks to use per major tick
		minor grid style={gray!25},
		ylabel = {Compilation time ratio},
		symbolic x coords={BenchA, BenchB, BenchC},
		xtick = data,			% Prevent x-ticks from being spammed.
		scaled y ticks = false,
		enlarge x limits=0.25,	% Make x-axis larger to properly fit goups
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
        \addplot[style={bblue,fill=bblue,mark=none}]
			coordinates {(BenchA,1.00) (BenchB,1.00) (BenchC,1.00)};

        \addplot[style={rred,fill=rred,mark=none}]
			coordinates {(BenchA,0.992710478) (BenchB,1.007489381) (BenchC,0.994110936)};

        \addplot[style={ggreen,fill=ggreen,mark=none}]
			coordinates {(BenchA,0.988867306) (BenchB,1.008398639) (BenchC,0.995989841)};

%        \addplot[style={ppurple,fill=ppurple,mark=none}]
%			coordinates {(BenchA,0.74) (BenchB,1.07) (BenchC,1.23)};

        \legend{No vectorization, LLVM based, Pair based}
    \end{axis}
\end{tikzpicture}
\caption[Compilation time bar chart]{Compilation time benchmark for three auto-vectorization alternatives. Results are cumulative for each benchmark.}
\end{figure}
