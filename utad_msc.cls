\ProvidesClass{utad_msc}

\LoadClass{article}

% Packages
\usepackage{graphicx}
\usepackage{subcaption}
\usepackage[export]{adjustbox}
\usepackage{titling}
\usepackage{helvet}
\usepackage{multicol}
\usepackage[pdfborder={0 0 0}]{hyperref}
\usepackage{fancyhdr}
\usepackage{graphicx}
\usepackage[top=1in,bottom=1in,left=1in,right=1in]{geometry}
\usepackage{setspace}

% Styling
\onehalfspacing
\setlength{\parindent}{0pt}
\setlength{\parskip}{1ex plus 0.5ex minus 0.2ex}
\renewcommand{\familydefault}{\sfdefault}

% Set variables
\newcommand{\student}[1]{\def \@student {#1}}
\newcommand{\utadstudent}{
    \@student
}
\newcommand{\tutor}[1]{\def \@tutor {#1}}
\newcommand{\utadtutor}{
    \@tutor
}
\newcommand{\course}[1]{\def \@course {#1}}
\newcommand{\utadcourse}{
    \@course
}
\newcommand{\project}[1]{\def \@project {#1}}
\newcommand{\utadtitle}{
    \@project
}

% % Title Page
% \renewcommand{\titlepage}{
%     \title{%
%         \large \uppercase{\utadcourse} \\
%         \vspace{1cm}
%         \Huge \utadtitle
%     }
%     \author{\utadstudent}
%     \date{} % clear date
%     \maketitle
% }

% Headers
\pagestyle{fancyplain}
\fancyhf{}
\headheight 20pt
\lhead{\fancyplain{}{\utadtitle}}
\rhead{\fancyplain{}{\utadstudent}}
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