% (c) 2018 Yan Scholten
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{proposalclass}[2018/10/07 LaTeX class for proposals]

\LoadClass[12pt,a4paper,oneside,draft]{article}
\RequirePackage[english]{babel}
\RequirePackage[utf8]{inputenc} 
\RequirePackage{graphicx}
\RequirePackage{geometry}
\RequirePackage{multicol}
\RequirePackage{amsmath}
\RequirePackage{multicol}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{tikz}
\RequirePackage[font=footnotesize,labelfont=bf]{caption}
\graphicspath{ {./plan/} {./figures/} }
\RequirePackage[round,authoryear]{natbib}

%\newcommand{\title}{}

\newcommand{\type}[1]{\def\@type{#1}}
\newcommand{\email}[1]{\def\@email{#1}}
\newcommand{\supervisor}[1]{\def\@supervisor{#1}}
\newcommand{\department}[1]{\def\@department{#1}}
\newcommand{\researchgroup}[1]{\def\@researchgroup{#1}}
\newcommand{\university}[1]{\def\@university{#1}}

\renewcommand{\maketitle}{%
\newgeometry{margin=1in}
\begin{titlepage}

\begin{center}
	\includegraphics[width=0.5\textwidth]{luh_logo_cmyk}\par
	\vspace{2cm}
	{\huge\@title\par}
	\vspace{0.5cm}
	{\LARGE\@type\par}
	\vfill
	{\Large\@author\par}
	{\large\@email\par}
	\vfill
	\par\noindent\rule{\textwidth}{0.4pt}
	\begin{multicols}{2}
		\begin{flushleft}
			{Supervisor:\par}
			\@supervisor\par
		\end{flushleft}
	\columnbreak
		\begin{flushright}
			\@researchgroup\par
			\@department\par
			\@university\par
		\end{flushright}
	\end{multicols}
	\par\noindent\rule{\textwidth}{0.4pt}
	\vfill
\end{center}

{\today\par}
\end{titlepage}
\restoregeometry
}
