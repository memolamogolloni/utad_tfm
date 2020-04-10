\ProvidesClass{utad_msc}

\LoadClassWithOptions{book}

\RequirePackage[backend=bibtex,style=verbose-trad2]{biblatex}
\bibliography{references} 

% Packages
\usepackage[autostyle=true]{csquotes}
\usepackage{lmodern} % Support latin modern fonts
\usepackage[T1]{fontenc} % Support for T1 enconding
\usepackage[spanish,activeacute]{babel} % Set spanish language
\usepackage[autostyle=true]{csquotes}
\usepackage{mathtools} % Add additional tools for math writing 
\RequirePackage{caption}
\RequirePackage{graphicx} % Support embed images
\RequirePackage{helvet} % Load helvetica font
\RequirePackage{hyperref} % Allows clickable links
\RequirePackage{fancyhdr} % Edit headers and footers
\RequirePackage[
    top=3.5cm,
    bottom=2.5cm,
    marginparwidth=3.5cm,
]{geometry} % Edit page layout
\RequirePackage{setspace} % Set spaces between lines
\RequirePackage{float} % Better tables and figures handling
\RequirePackage{listings}
\RequirePackage{xargs} % Use more than one optional parameter in a new commands
\RequirePackage[
    colorinlistoftodos,
    prependcaption,
    textsize=scriptsize,
    color=yellow,
    bordercolor=yellow,
]{todonotes}
\RequirePackage{xcolor}

% \RequirePackage{color}

% % Set colors variables
% \definecolor{lightgray}{rgb}{.9,.9,.9}
% \definecolor{darkgray}{rgb}{.4,.4,.4}
% \definecolor{purple}{rgb}{0.65, 0.12, 0.82}

% % JS syntax highlighting
% \lstdefinelanguage{JavaScript}{
%   keywords={typeof, new, true, false, catch, function, return, null, catch, switch, var, if, in, while, do, else, case, break},
%   keywordstyle=\color{blue}\bfseries,
%   ndkeywords={class, export, boolean, throw, implements, import, this},
%   ndkeywordstyle=\color{darkgray}\bfseries,
%   identifierstyle=\color{black},
%   sensitive=false,
%   comment=[l]{//},
%   morecomment=[s]{/*}{*/},
%   commentstyle=\color{purple}\ttfamily,
%   stringstyle=\color{red}\ttfamily,
%   morestring=[b]',
%   morestring=[b]"
% }
% \lstset{
%    language=JavaScript,
%    backgroundcolor=\color{lightgray},
%    extendedchars=true,
%    basicstyle=\footnotesize\ttfamily,
%    showstringspaces=false,
%    showspaces=false,
%    numbers=left,
%    numberstyle=\footnotesize,
%    numbersep=9pt,
%    tabsize=2,
%    breaklines=true,
%    showtabs=false,
%    captionpos=b
% }
% % C syntax highlighting
% \lstdefinelanguage{C}{
%   keywords={typeof, new, true, false, catch, function, return, null, catch, switch, var, if, in, while, do, else, case, break},
%   keywordstyle=\color{blue}\bfseries,
%   ndkeywords={class, export, boolean, throw, implements, import, this},
%   ndkeywordstyle=\color{darkgray}\bfseries,
%   identifierstyle=\color{black},
%   sensitive=false,
%   comment=[l]{//},
%   morecomment=[s]{/*}{*/},
%   commentstyle=\color{purple}\ttfamily,
%   stringstyle=\color{red}\ttfamily,
%   morestring=[b]',
%   morestring=[b]"
% }
% \lstset{
%    language=C,
%    backgroundcolor=\color{lightgray},
%    extendedchars=true,
%    basicstyle=\footnotesize\ttfamily,
%    showstringspaces=false,
%    showspaces=false,
%    numbers=left,
%    numberstyle=\footnotesize,
%    numbersep=9pt,
%    tabsize=2,
%    breaklines=true,
%    showtabs=false,
%    captionpos=b
% }

\hypersetup{
    colorlinks=true,
    citecolor=black,
    linkcolor=black,
    urlcolor=blue,
    linktocpage=true,
}
\urlstyle{same}

\captionsetup{%
  format=plain,
  font=footnotesize,
}

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

% Configure sidenotes styling
\newcommandx{\sidenote}[2][1=]{
    \todo[linecolor=blue,backgroundcolor=blue!25,bordercolor=blue,#1]{#2}
}

% Set default font family to sans serif
\renewcommand{\familydefault}{\sfdefault}

% Headers and footers style
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\markboth{#1}{}}
\renewcommand{\headrulewidth}{0.4pt}% Line at the header visible
\renewcommand{\footrulewidth}{0.4pt}% Line at the footer visible
\fancyhf{}
\headheight 20pt
\fancyhead[R]{\utadtitle}
\fancyhead[L]{\leftmark}
\fancyfoot[R]{\thepage}
% Set header and footer also for the first page of each chapter
\fancypagestyle{plain}{%
  \fancyhf{}%
  \fancyhead[R]{\utadtitle}
  \fancyhead[L]{\leftmark}
  \fancyfoot[R]{\thepage}
}

% \newcommand{\bjscode}[1]{\begin{lstlisting}[#1]}
% \newcommand{\ejscode}{\end{lstlisting}}

% \pagestyle{fancyplain}
% \renewcommand{\chaptermark}[1]{\markboth{#1}{}}
% \renewcommand{\headrulewidth}{0.4pt}% Line at the header visible
% \renewcommand{\footrulewidth}{0.4pt}% Line at the footer visible
% \fancyhf{}
% \headheight 20pt
% \fancyhead[R]{\utadtitle}
% \fancyhead[L]{\thechapter ~ \leftmark}
% \fancyfoot[R]{\thepage}
% \renewcommand{\headrulewidth}{2pt}
% \renewcommand{\footrulewidth}{1pt}


% % Question (section) headers
% \newcounter{questioncounter}
% \newcounter{subquestioncounter}[questioncounter]
% \newcounter{subsubquestioncounter}[subquestioncounter]

% \newenvironment{question}{
%     \ifnum\value{questioncounter}>0
%       \newpage
%     \else
%       \vspace{40pt}
%     \fi
%     \refstepcounter{questioncounter}
%     \addcontentsline{toc}{section}{Question {\arabic{questioncounter}}}
%     \noindent{\Large \textbf{Question \arabic{questioncounter}}}
% }{\par\addvspace{\baselineskip}}

% \newenvironment{subquestion}[1]{
%     \par\addvspace{\baselineskip}\refstepcounter{subquestioncounter}
%     \addcontentsline{toc}{subsection}{(\alph{subquestioncounter}) {#1}}
%     \noindent{\large \textbf{(\alph{subquestioncounter}) {#1}}}
%     \newline
% }{\par\addvspace{\baselineskip}}

% \newenvironment{subsubquestion}[1]{
%     \par\addvspace{\baselineskip}\refstepcounter{subsubquestioncounter}
%     \addcontentsline{toc}{subsubsection}{(\roman{subsubquestioncounter}) {#1}}
%     \noindent{\textbf{(\roman{subsubquestioncounter}) {#1}}}
%     \newline
% }{\par\addvspace{\baselineskip}}