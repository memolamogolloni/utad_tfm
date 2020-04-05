\ProvidesClass{utad_msc}

\LoadClass{article}

% PDF Stuff
\usepackage[pdfborder={0 0 0}]{hyperref}
\usepackage{fancyhdr}
\usepackage{graphicx}
\usepackage{amsmath, amsthm, amssymb, siunitx, url}

% spacing
\usepackage{setspace}
\onehalfspacing

% paragraphs
\setlength{\parindent}{0pt}
\setlength{\parskip}{1ex plus 0.5ex minus 0.2ex}

% margins
\usepackage[top=1in,bottom=1in,left=1in,right=1in]{geometry}


\newcommand{\student}[1]{\def \@student {#1}}
\newcommand{\email}[1]{\def \@email {#1}}
\newcommand{\identifier}[1]{\def \@identifier {#1}}
\newcommand{\course}[1]{\def \@course {#1}}
\newcommand{\tma}[1]{\def \@tma {#1}}
\newcommand{\tmapart}[1]{\def \@tmapart {#1}}

% Student info
\newcommand{\studentinfo}{
    \ifdefined \@email
        \href{mailto:\@email}{\@student, \space \@identifier}
    \else
        \@student, \space \@identifier
    \fi
}

% Student title
\newcommand{\tmatitle}{
    \@course \space - \textbf{TMA \two@digits{\@tma}}
    \ifdefined \@tmapart
        \space - Part \@tmapart
    \fi
}

% Title Page
\renewcommand{\titlepage}{
    \author{\studentinfo}
    \title{\tmatitle}
    \maketitle
    \thispagestyle{empty}
}

% Headers
\pagestyle{fancyplain}
\fancyhf{}
\headheight 20pt
\lhead{\fancyplain{}{\tmatitle}}
\rhead{\fancyplain{}{\studentinfo}}
\cfoot{\fancyplain{}{\thepage}}

% Question (section) headers
\newcounter{questioncounter}
\newcounter{subquestioncounter}[questioncounter]
\newcounter{subsubquestioncounter}[subquestioncounter]

\newenvironment{question}{
    \ifnum\value{questioncounter}>0
      \newpage
    \else
      \vspace{40pt}
    \fi
    \refstepcounter{questioncounter}
    \addcontentsline{toc}{section}{Question {\arabic{questioncounter}}}
    \noindent{\Large \textbf{Question \arabic{questioncounter}}}
}{\par\addvspace{\baselineskip}}

\newenvironment{subquestion}[1]{
    \par\addvspace{\baselineskip}\refstepcounter{subquestioncounter}
    \addcontentsline{toc}{subsection}{(\alph{subquestioncounter}) {#1}}
    \noindent{\large \textbf{(\alph{subquestioncounter}) {#1}}}
    \newline
}{\par\addvspace{\baselineskip}}

\newenvironment{subsubquestion}[1]{
    \par\addvspace{\baselineskip}\refstepcounter{subsubquestioncounter}
    \addcontentsline{toc}{subsubsection}{(\roman{subsubquestioncounter}) {#1}}
    \noindent{\textbf{(\roman{subsubquestioncounter}) {#1}}}
    \newline
}{\par\addvspace{\baselineskip}}