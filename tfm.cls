\ProvidesClass{tfm}[2024/03/14 Custom Class for TFM]
\LoadClass[11pt,a4paper]{report}

% Paquetes requeridos
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[english,spanish,es-lcroman, es-tabla]{babel}
\RequirePackage{graphicx}
\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\RequirePackage[scaled]{helvet}
\RequirePackage{setspace}
\RequirePackage[backend=biber,style=apa,natbib=true]{biblatex}
\DeclareLanguageMapping{spanish}{spanish-apa}
\RequirePackage{xcolor}
\definecolor{rojo}{RGB}{255,0,0}

\bibliography{bibliography}
\usepackage{csquotes}

\usepackage{caption}
\captionsetup{font=footnotesize}
\captionsetup{justification=centering}
\captionsetup[table]{position=bottom}

\usepackage{parskip}
\setlength{\parindent}{0pt}

\usepackage{titlesec}
\titleformat{\chapter}[block]
  {\normalfont\fontsize{20pt}{20pt}\selectfont\bfseries}
  {Capítulo \thechapter.   }
  {0pt}
  {}
\titlespacing*{\chapter}{0pt}{-10pt}{0pt}

\titleformat{\section}
  {\normalfont\fontsize{14pt}{14pt}\selectfont\bfseries}
  {\thesection}
  {1em}
  {}
\titlespacing*{\section}{0pt}{0pt}{0pt}

\usepackage{enumitem}
\setlist[itemize]{itemsep=0pt, parsep=0pt, label=\textbullet}

\addto\captionsspanish{ \renewcommand{\contentsname}{Índice general}}

% Paquetes adicionales para contenido técnico
\usepackage{amsmath}
\usepackage{amssymb}
\usepackage{eurosym}
\usepackage{booktabs}
\usepackage{longtable}
\usepackage{array}
\usepackage{listings}
\usepackage[utf8]{inputenc}
\lstset{
    inputencoding=utf8,
    extendedchars=true,
    literate=
        {á}{{\'a}}1 {é}{{\'e}}1 {í}{{\'i}}1 {ó}{{\'o}}1 {ú}{{\'u}}1
        {Á}{{\'A}}1 {É}{{\'E}}1 {Í}{{\'I}}1 {Ó}{{\'O}}1 {Ú}{{\'U}}1
        {ñ}{{\~n}}1 {Ñ}{{\~N}}1 {ü}{{\"u}}1 {Ü}{{\"U}}1
        {¿}{{?`}}1 {¡}{{!`}}1
}
\usepackage{float}
\usepackage{tikz}
\usetikzlibrary{shapes.geometric, arrows.meta, positioning, fit, backgrounds, calc}
\usepackage{hyperref}
\hypersetup{
    colorlinks=true,
    linkcolor=black,
    filecolor=blue,
    citecolor=blue,
    urlcolor=blue,
    pdftitle={TFM - Arquitectura Big Data para Espectros Raman}
}

\lstset{
    basicstyle=\ttfamily\footnotesize,
    breaklines=true,
    frame=single,
    numbers=left,
    numberstyle=\tiny,
    showstringspaces=false,
    captionpos=b,
    tabsize=2,
    keywordstyle=\color{blue},
    commentstyle=\color{gray},
    stringstyle=\color{red!70!black}
}

\renewcommand{\familydefault}{\sfdefault}

\geometry{left=3cm, right=3cm, top=1.3cm, bottom=1.8cm, includeheadfoot, headheight=40pt}

\fancypagestyle{titlepagestyle}{
    \fancyhf{}
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{0pt}
}

\pagestyle{fancy}
    \fancyhf{}
    \lhead{\begin{tabular}{p{9cm}}\vspace{0.05em}\fontsize{10.5pt}{13pt}\selectfont \Titulo{}\\[0.5em]\fontsize{10.5pt}{13pt}\selectfont \NombreAutor{}\vspace{0.45em}\end{tabular}}
    \rhead{\raisebox{-0.4\height}{\includegraphics[height=1cm]{imagenes/logo_ue.png}}}
    \cfoot{\thepage}
    \renewcommand{\headrulewidth}{0.7pt}
    \setlength{\headheight}{57.30338pt}

\fancypagestyle{plain}{
    \fancyhf{}
    \lhead{\begin{tabular}{p{9cm}}\vspace{0.05em}\fontsize{10.5pt}{13pt}\selectfont \Titulo{}\\[0.5em]\fontsize{10.5pt}{13pt}\selectfont \NombreAutor{}\vspace{0.45em}\end{tabular}}
    \rhead{\raisebox{-0.4\height}{\includegraphics[height=1cm]{imagenes/logo_ue.png}}}
    \cfoot{\thepage}
    \renewcommand{\headrulewidth}{0.7pt}
    \setlength{\headheight}{57.30338pt}
}

\onehalfspacing
\setstretch{1.1}

\captionsetup[figure]{labelfont=bf, name=Figura, labelsep=period}
\captionsetup[table]{labelfont=bf, name=Tabla, labelsep=period}
