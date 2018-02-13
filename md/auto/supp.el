(TeX-add-style-hook
 "supp"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("fontenc" "T1") ("xcolor" "table") ("ulem" "normalem")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art10"
    "mathptmx"
    "fontenc"
    "geometry"
    "url"
    "breakurl"
    "dcolumn"
    "booktabs"
    "xcolor"
    "longtable"
    "array"
    "multirow"
    "wrapfig"
    "float"
    "colortbl"
    "pdflscape"
    "tabu"
    "threeparttable"
    "ulem")
   (LaTeX-add-labels
    "sec:acquisition"
    "sec:integration"
    "sec:preds"
    "sec:integrate"
    "sec:evaluation"
    "sec:distortion-ESR1"
    "sec:distortion-ERBB2"
    "sec:concordance"
    "sec:size"
    "sec:published"))
 :latex)

