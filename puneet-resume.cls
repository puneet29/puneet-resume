% Intro Options
\ProvidesClass{puneet-resume}[2021/06/29 CV]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[a4paper, hmargin=1.25cm, vmargin=0.2cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage[hidelinks]{hyperref}
\usepackage{titlesec}
\usepackage[UKenglish]{babel}
\usepackage[UKenglish]{isodate}
\usepackage{fontspec}
\usepackage{fontawesome}
\usepackage{amssymb}
\usepackage{enumitem}

% Second level of lists will be a dot
\renewcommand{\labelitemii}{$\textperiodcentered$}

% Color definitions
\definecolor{date}{HTML}{666666} 
\definecolor{primary}{HTML}{000002}
\definecolor{headings}{HTML}{0000ff}
\definecolor{subheadings}{HTML}{333333}
\definecolor{smcolor}{HTML}{333333}

% Set main fonts
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Color=primary, Path = fonts/calibri/]{Calibri}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/calibri/]{Calibri}
\newcommand{\custombold}[1]{\color{subheadings}\fontspec[Path = fonts/calibri/]{CALIBRIB}\selectfont #1 \normalfont}


% Header command
% \newcommand{\headername}{\color{headings}
% \fontspec[Path = fonts/calibri/]{Calibri}\fontsize{24pt}{32pt}\selectfont\raggedright}{} {0em}{}
\newcommand{\headername}[1]{\color{subheadings}
\fontspec[Path = fonts/calibri/]{CALIBRIB}\fontsize{24pt}{12pt}\selectfont\vspace{0pt}\raggedright {#1} \normalfont}


\titlespacing{\section}{0pt}{0pt}{0pt}

% Headings command
\titleformat{\section}{\color{headings}
\fontspec[Path = fonts/calibri/]{Calibri}\fontsize{16pt}{24pt}\selectfont\raggedright}{} {0em}{}

\newcommand{\SectionHead}[1]{\smash{\begin{tabular}{l} \hline #1 \\ \hline \end{tabular}\hspace*{-\tabcolsep}}}

% Subeadings command
\titleformat{\subsection}{\color{subheadings}
\fontspec[Path = fonts/calibri/]{Calibri}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase}{}{0em}{}
\titlespacing{\subsection}{0pt}{\parskip}{-\parskip}
\titlespacing{\subsubsection}{0pt}{\parskip}{-\parskip}
\newcommand{\runsubsection}[1]{\color{subheadings}
\fontspec[Path = fonts/calibri/]{CALIBRIB}\fontsize{12pt}{12pt}\selectfont\bfseries {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{\color{subheadings}\raggedright\hspace*{0pt}\hfill\vspace{3pt}\fontspec[Path = fonts/calibri/]{CALIBRIB}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}

% Item Description command
\newcommand{\itemdes}[1]{\color{subheadings}\raggedright\vspace{2pt}\fontspec[Path = fonts/calibri/]{Calibri}\fontsize{11pt}{13pt}\selectfont {#1} \normalfont}

% Descriptors command
\newcommand{\descriptright}[1]{\color{subheadings}\raggedright\hspace*{0pt}\hfill\fontspec[Path = fonts/calibri/]{CALIBRII}\fontsize{11pt}{12pt}\selectfont {#1 \\} \normalfont}

% Descriptors datecolor
\newcommand{\datecolor}[1]{\color{smcolor}\raggedright\scshape\fontspec[Path = fonts/calibri/]{CALIBRII}\fontsize{11pt}{13pt}\selectfont {#1 } \normalfont}

% Section seperators command
\newcommand{\sectionsep}[0]{\vspace{4pt}}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{\begin{itemize}\itemsep0pt \parskip0pt \parsep0pt \topsep0pt \leftmargin0pt \itemindent0pt}{\end{itemize}\vspace{-\topsep}}

% Create new list with no left margin
\newlist{myitemize}{itemize}{1}
\setlist[myitemize,1]{label=\textperiodcentered,leftmargin=4pt}

\newenvironment{subtightemize}{\begin{myitemize}\itemsep0pt \parskip0pt \parsep0pt \topsep0pt}{\end{myitemize}}

% Company desc command
\newcommand{\companydescript}[1]{\color{subheadings}\raggedright\fontspec[Path = fonts/calibri/]{CALIBRII}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}
