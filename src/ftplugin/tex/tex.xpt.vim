if exists("b:__TEX_TEX_XPT_VIM__") 
    finish 
endif
let b:__TEX_TEX_XPT_VIM__ = 1 

" containers
let [s:f, s:v] = XPTcontainer() 

" constant definition
call extend(s:v, {'$TRUE': '1', '$FALSE': '0', '$NULL': 'NULL', '$UNDEFINED': '', '$IF_BRACKET_STL': "\n"})

" inclusion
XPTinclude
    \ _common/common

call XPTemplateMark( '`', '~' )

" ========================= Function and Variables =============================


" ================================= Snippets ===================================
XPTemplateDef 
XPT eq hint=\\begin{equation}\ ..\ \\end{equation}
\begin{equation}
`cursor~
\end{equation}
..XPT

XPT info hint=title\ author\ date
\title{`title~}
\author{`$author~}
\date{`date()~}
..XPT

XPT doc hint=begin{document}\ ..\ end{document}
\begin{document}
    `cursor~
\end{document}
..XPT

XPT abstract hint=begin{abstract}\ ..\ end{abstract}
\begin{abstract}
    `cursor~
\end{abstract}
..XPT

XPT array hint=begin{array}{..}...\ end{array}
\begin{array}{`kind~rcl~}
`what~~`...0~ & `what~~`...0~ \\`...1~
`what~~`...2~ & `what~~`...2~ \\`...1~
\end{array}
..XPT

XPT table hint=begin{tabular}{..}...\ end{tabular}
\begin{tabular}{`kind~|r|c|l|~}
`hline...~\\hline~~
`what~~`...0~ & `what~~`...0~ \\`...1~
`hline...~\\hline~~
`what~~`...2~ & `what~~`...2~ \\`...1~
\end{tabular}
..XPT

XPT section hint=section{..}
\section{`sectionTitle~}
..XPT

XPT frac hint=frac{..}{..}
\frac{`a~}{`b~}
..XPT

XPT lbl hint=label{..}
\label{`cursor~}
..XPT

XPT ref hint=ref{..}
\ref{`curosr~}
..XPT

XPT integral hint=int_..^..
\int_`begin~^`end~{`cursor~}
..XPT

XPT lim hint=lim_....
\lim_{`what^}
..XPT

XPT itemize hint=begin{itemize}\ ...\ end{itemize}
\begin{itemize}
\item `what~~`...~
\item `what~~`...~
\end{itemize}
..XPT

XPT enumerate hint=begin{enumerate}\ ...\ end{enumerate}
\begin{enumerate}
\item `what~~`...~
\item `what~~`...~
\end{enumerate}
..XPT

XPT sqrt hint=sqrt[..]{..}
\sqrt`n...~[\`nth\~]~~{`cursor~}
..XPT

XPT sum hint=sum{..}~..{}
\sum_{`init~}^`end~{`cursor~}
..XPT

XPT slide hint=begin{slide}\ ..\ end{slide}
\begin{slide}
`cursor~
\end{slide}
..XPT

XPT documentclass hint=documentclass[..]{..}
XSET kind=Choose(['article','book','report', 'letter','slides'])
\documentclass[`size~11~pt]{`kind~}
..XPT

XPT toc hint=\tableofcontents
\tableofcontents
..XPT

XPT beg hint=begin{..}\ ..\ end{..}
\begin{`something~}
`cursor~
\end{`something~}
..XPT

XPT as_ hint=SEL{..}
\`wrapped~{`cursor~}
..XPT

XPT with_ hint=\\..\ {SEL}
\`cursor~{`wrapped~}
..XPT

