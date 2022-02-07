(require 'org)
(require 'ox)
(require 'ox-beamer)
(require 'ox-latex)

(setq
 org-latex-listings 'minted
 org-latex-pdf-process
 '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
   "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
   "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"))

(custom-set-variables
 '(org-beamer-outline-frame-title "目录"))

(add-to-list 'org-latex-classes
             '("beamer"
               "\\documentclass[10pt, utf8, aspectratio=43, presentation]{beamer}

\\usetheme{Madrid}
\\usecolortheme{whale}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 中文设置
\\usepackage[encapsulated]{CJK}
\\usepackage{CJKutf8, CJKfntef, CJKnumb, CJKpunct, CJKspace}
\\usepackage{indentfirst}%% useless for beamer

\\newcommand*\\zhdate{%
  {\\the\\year}~年~{\\the\\month}~月~{\\the\\day}~日}
\\makeatletter
\\@ifundefined{today}{\\newcommand\\today\\zhdate}{\\renewcommand\\today\\zhdate}
\\makeatother

\\uselanguage{chinese}
\\languagepath{chinese}
\\deftranslation[to=chinese]{Contents}{目录}
\\deftranslation[to=chinese]{Table}{表}
\\deftranslation[to=chinese]{Figure}{图}
\\deftranslation[to=chinese]{Theorem}{定理}
\\deftranslation[to=chinese]{Corollary}{推论}
\\deftranslation[to=chinese]{Definition}{定义}
\\deftranslation[to=chinese]{Definitions}{定义}
\\deftranslation[to=chinese]{Lemma}{引理}
\\deftranslation[to=chinese]{Problem}{问题}
\\deftranslation[to=chinese]{Solution}{解}
\\deftranslation[to=chinese]{Fact}{事实}
\\deftranslation[to=chinese]{Proof}{证明}

\\AtBeginDocument{\\begin{CJK*}{UTF8}{gbsn}}
\\AtEndDocument{\\clearpage\\end{CJK*}}

%% 章节前显示目录
\\AtBeginSection[]{
  \\begin{frame}<beamer>
  \\frametitle{目录}
  \\tableofcontents[currentsection]
  \\end{frame}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\\usepackage{color}
\\usepackage{etoolbox}
\\usepackage{listings}
\\usepackage{minted}
\\usepackage{url}
\\urlstyle{tt}
\\usepackage{verbatim}

\\AtEndPreamble{
  \\hypersetup{%%
    % bookmarks, % default true
    % CJKbookmarks,
    bookmarksdepth     = 3, % to show sections, subsections and subsubsections
    bookmarksnumbered, % show section counter
    bookmarksopen      = true, % false by default
    bookmarksopenlevel = 2, % how many levels to open
    breaklinks,  % maybe to enable multi-line names
    % colorlinks,
    linktocpage, % make page number, not text, be link on TOC, LOC and LOT
    pdfborder          = 0 0 0,
    pdfstartpage       = 1,
    pdfstartview       = FitH,
    unicode}}
                [NO-DEFAULT-PACKAGES]
                [NO-PACKAGES]"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))
