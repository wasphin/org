(require 'org)
(require 'ox)
(require 'ox-beamer)

(setq
 org-latex-listings 'minted
 org-latex-packages-alist '(("" "minted"))
 org-latex-pdf-process
 '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
   "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"))

;; org-latex-export additional packages
(add-to-list 'org-latex-packages-alist '("" "color" t))
(add-to-list 'org-latex-packages-alist '("" "listings" t))
(add-to-list 'org-latex-packages-alist '("" "verbatim" t))
(add-to-list 'org-latex-packages-alist '("" "zh" t))

(custom-set-variables
 '(org-beamer-outline-frame-title "目录"))
