\begin{figure}[H]
\label{graph:novect}
\begin{center}
\begin{adjustbox}{max size={.8\textwidth}{.8\textheight}}
\begin{tikzpicture}[
		scale=1.0,
		auto,
		semithick,
		op/.style={ellipse, draw, minimum width=3cm}
	]
	
	\node[op] (n1)  at (0, 6)	{\%1 load 0x0};
	\node[op] (n2)  at (4, 6)	{\%2 const 0x2};
	\node[op] (n3)  at (8, 6)	{\%3 load 0x1};
	\node[op] (n4)  at (12, 6)	{\%4 const 0x3};

	\node[op] (n5)  at (2, 4)	{\%5 add};
	\node[op] (n6)  at (10, 4)	{\%6 add};

	\node[op] (n7)  at (0, 2)	{\%7 mul};
	\node[op] (n8)  at (6, 2)	{\%8 mul};
	\node[op] (n9)  at (12, 2)	{\%9 mul};

	\node[op] (n10) at (4, 0)	{\%10 add};
	\node[op] (n11) at (8, 0)	{\%11 add};
	
	\path[->] (n1) edge [bend right = 15] node[below =0.15 cm] {} (n5);
	\path[->] (n2) edge [bend right =-15] node[below =0.15 cm] {} (n5);
	\path[->] (n3) edge [bend right = 15] node[below =0.15 cm] {} (n6);
	\path[->] (n4) edge [bend right =-15] node[below =0.15 cm] {} (n6);
	
	\path[->] (n1) edge [bend right = 30] node[below =0.15 cm] {} (n7);
	\path[->] (n5) edge [bend right =-15] node[below =0.15 cm] {} (n7);
	\path[->] (n6) edge [bend right =-15] node[below =0.15 cm] {} (n8);
	\path[->] (n2) edge [bend right =-15] node[below =0.15 cm] {} (n8);
	\path[->] (n6) edge [bend right = 15] node[below =0.15 cm] {} (n9);
	\path[->] (n4) edge [bend right =-30] node[below =0.15 cm] {} (n9);
	
	\path[->] (n8) edge [bend right = 15] node[below =0.15 cm] {} (n10);
	\path[->] (n8) edge [bend right =-15] node[below =0.15 cm] {} (n10);
	\path[->] (n8) edge [bend right = 15] node[below =0.15 cm] {} (n11);
	\path[->] (n9) edge [bend right =-15] node[below =0.15 cm] {} (n11);

\end{tikzpicture}
\end{adjustbox}
\end{center}
\caption[Operation graph with no vectorization]{Graph of operations that have not been vectorized.}
\end{figure}