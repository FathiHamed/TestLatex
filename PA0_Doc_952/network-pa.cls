\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{network-pa}[2017/02/21 Network Programming Assignment (PA) Template v1.0.0]

\LoadClass[12pt,a4paper,BCOR=.7cm,headsepline]{article}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

\ProcessOptions\relax

\RequirePackage{amsmath,amsthm,amssymb,scrhack,titlesec}

\setcounter{secnumdepth}{3}

\titlelabel{\thetitle.\quad}

\RequirePackage[includeheadfoot,left=2.5cm,bottom=2.5cm,right=2.5cm,top=1cm,footskip=0.5cm]{geometry}
\sloppy\parindent1.5em

\RequirePackage[usenames,dvipsnames]{color}
\RequirePackage[table]{xcolor}
\definecolor{darkred}{rgb}{0.5,0,0}     % Web color: Maroon
\definecolor{darkgreen}{rgb}{0,0.5,0}   % Web color: Green
\definecolor{darkblue}{rgb}{0,0,0.5}    % Web color: Navy

\RequirePackage{colortbl,enumerate,tikz}
\RequirePackage[xetex,colorlinks,bookmarksnumbered,linkcolor=darkblue,citecolor=darkred,urlcolor=darkgreen]{hyperref}
\RequirePackage{subcaption}
\RequirePackage[all]{hypcap}
\RequirePackage{listings}
\RequirePackage{mdframed}

\newdimen\R
\R=1.0cm
\newdimen\Ro
\Ro=1.5cm

\newcommand{\mypagenumber}{
\begin{tikzpicture}
    \draw (10:\R) -- (80:\R) -- (190:\R) -- (225:\Ro) -- (260:\R) -- cycle[color=blue] (90:\R) node[yshift=-1.0\R,color=black] {$\thepage$};
\end{tikzpicture}}

\RequirePackage{fancyhdr}
\lhead{}
\chead{}
\rhead{}
\lfoot{\mypagenumber}
\cfoot{}
\rfoot{}

\pagestyle{fancy}

\addtolength{\headwidth}{\marginparwidth}
\renewcommand{\headrulewidth}{0pt}

\RequirePackage{multicol,float}
\RequirePackage[extrafootnotefeatures]{xepersian}

\RequirePackage{url}
\def\url@leostyle{%
  \@ifundefined{selectfont}{\def\UrlFont{\sf}}{\def\UrlFont{\small\ttfamily}}}
\urlstyle{leo}

\RequirePackage{xifthen}

\settextfont[Scale=1]{XB Zar}
\setlatintextfont[Scale=1]{Linux Libertine}
\setdigitfont{XB Yas}

\interfootnotelinepenalty=10000

\defpersianfont\naskh[Scale=1]{IranNastaliq}
\defpersianfont\naskhlarge[Scale=5]{IranNastaliq}

\linespread{1.5}

\newcommand{\thanksta}[1]
{\def\@thanksfootnote{#1}}

\def\@maketitle{\begin{center}\small
\naskh{
به نام خداوند بخشنده مهربان
}

\includegraphics[width=4cm]{logo.png}

دانشگاه صنعتی شریف\hfill دانشکده‌ی مهندسی کامپیوتر\\
\vspace{-0.75cm}{\large\bf\@title\footnote{\@thanksfootnote}\\
شبکه‌های رایانه‌ای
}\\
\vspace{-0.75cm}
مدرس: مهدی خرازی
\hfill\@date

\rule[1ex]{.75\textwidth}{.5pt}\vspace{-0.65cm}
\rule[1ex]{.75\textwidth}{.5pt}
\bigskip\end{center}}

\endinput
