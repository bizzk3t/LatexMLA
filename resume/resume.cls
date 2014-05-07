\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{resume}[2014/05/06]

\DeclareOption{12pt}{
	\PassOptionsToClass{\CurrentOption}{article}
}

\ExecuteOptions{12pt}

\ProcessOptions\relax

\LoadClass{article}

\RequirePackage{resume}

\newcommand{\DeclareAuthorVariable}{
	\@DeclareAuthorVariable{@var}
}
\newcommand{\@DeclareAuthorVariable}[2]{
	\@namedef{#1}{#1{#2}}
	\@namedef{#2}##1{\@namedef{#2}{##1}}
}

\newcommand{\printheader}{
	\firstname\space\lastname \\
	\teachername \\
	\classtitle \\
	\paperdate
}

\newcommand{\printtitle}{
\begin{center}
\papertitle
\end{center}
}

\newcommand{\initpaper}{
\begin{flushleft}
\lhead{}
\chead{}
\rhead{\lastname\space\thepage}
\lfoot{}
\cfoot{}
\rfoot{}
\printheader 
\printtitle
\end{flushleft}
}

\DeclareAuthorVariable{firstname}
\DeclareAuthorVariable{lastname}
\DeclareAuthorVariable{teachername}
\DeclareAuthorVariable{classtitle}
\DeclareAuthorVariable{paperdate}
\DeclareAuthorVariable{papertitle}

\endinput
