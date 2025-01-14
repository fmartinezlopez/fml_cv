\LoadClass{article}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}[Just another academic CV style]

\RequirePackage{titlesec}

% We customise the \section command 
\titleformat{\section}         
  {\large\scshape\raggedright} % Make the \section headers large, small caps and left aligned
  {}{0em}                      % No label (prefix) and no horizontal separation between label and title body
  {}                           		% Code preceeding the title body
  [\titlerule]                 % Code following the title body. Here a horizontal line.
 
 % We also slightly update \subsection command
 \titleformat{\subsection}
 {\normalsize\scshape\raggedright}
 {}{0em}
 {}

%% define the \datedsubsection command
\newcommand{\datedsubsection}[4]{%	
\cvsubsection[#2]{#3 \hfill \small{\textlf{\scshape{#2}}}}%
%\cvsubsection[#2]{
%    \begin{multicols}{2}
%        #3
%        \vfill\null
%        \columnbreak
%        \hfill \small{\textlf{\scshape{#2}}}
%    \end{multicols}}
%\vspace*{-1.2cm}
\begin{minipage}{5cm}
    \vspace*{-0.7ex}\hspace*{-3cm}\footnotesize #1
\end{minipage}
\raggedright
    
\begin{small}
    #4
\end{small}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% DEFINE OUR OWN SUBSECTIONS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcounter{cvsubsection}
\titleclass{\cvsubsection}{straight}[\part]
\titleformat{\cvsubsection}         
	{\raggedright} 
	{}{0em}                      
	{}                           
\titlespacing*{\cvsubsection}{0pt}{3.5ex plus 1ex minus .2ex}{-2.5ex}