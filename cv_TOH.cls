%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Dimensions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% sectionwidth the amount that the section titles go in the
%inleft margin
%
% resumewidth the width of the total resume from the left
%themargin to the right.  Don't use textwidth
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Definitions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% sectionfont the font used to print section titles
% section. use \renewcommand to change it
%
% namefont the font used to print your name
% your. use \renewcommand to change it
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv_TOH}[2011/03/26 My custom CV class]

\LoadClass{article}
\RequirePackage{titlesec}
\RequirePackage{xcolor}
\RequirePackage{fancyhdr} %fancy headers
%\RequirePackage{fontspec}

%\newfontfamily\headingfont[]{Armata}

% https://www.sharelatex.com/blog/2011/03/27/how-to-write-a-latex-class-file-and-design-your-own-cv.html
% add notes on title format
% \titleformat{command}[shape]{hformati}{label}{sep}{before-code}[after-code]

\titleformat{\section}         % Customise the \section command 
  {\large\sffamily\scshape\raggedright\color{lightgray}} 
                               % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
  [\color{lightgray}\titlerule]                 % Inserts a horizontal line after the heading

\titleformat{\subsection}
  {\sffamily\raggedright}
  {}{0em}
  {}

\titleformat{\subsubsection}
  {\sffamily\slshape\raggedright}
  {}{0em}
  {}
% This defines two new commands \datedsection and \datedsubsection which take two
% arguments: the section name as before, and a date which will be typeset on the
% right hand side of the page. The \hfill command tells LaTeX to fill as much
% space as possible and so pushes the second argument (#2) to the right of the
% page. Modify cv.tex to use these commands:

\newcommand{\datedsection}[2]{%
  \section[#1]{#1 \hfill #2}%
}
\newcommand{\datedsubsection}[2]{%
  \subsection[#1]{#1 \hfill #2}%
}

\newcommand{\name}[1]{
  \centerline{\scshape\Huge{#1}}
}

\newcommand{\contact}[5]{
    #1 {\large\textperiodcentered} #2 {\large\textperiodcentered} #3
    {\Large} #4 \ {\Large} #5
}

\newcommand{\shortcontact}[2]{
    \begin{center}
    \href{mailto:#1}{#1} {\large\textperiodcentered} #2
    \end{center}
}
