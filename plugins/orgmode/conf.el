;; Init file to use with the orgmode plugin.

;; Load org-mode
;; Requires org-mode v8.x


;;; Custom configuration for the export.

;;; Add any custom configuration that you would like to 'conf.el'.
(setq nikola-use-pygments t
      org-export-with-toc t
      org-export-headline-levels 2
      org-export-with-section-numbers nil
      org-startup-folded 'showeverything)


;;org-mode export to latex
(require 'ox-latex)
(setq org-export-latex-listings t)

;;org-mode source code setup in exporting to latex
(add-to-list 'org-latex-listings
             '("" "listings"))
(add-to-list 'org-latex-listings
             '("" "color"))
(add-to-list 'org-latex-packages-alist
             '("" "xcolor" t))
(add-to-list 'org-latex-packages-alist
             '("" "listings" t))
;;(add-to-list 'org-latex-packages-alist
;;             '("" "fontspec" t))
(add-to-list 'org-latex-packages-alist
             '("" "indentfirst" t))
;;(add-to-list 'org-latex-packages-alist
;;             '("" "xunicode" t))
(add-to-list 'org-latex-packages-alist
             '("" "geometry"))
(add-to-list 'org-latex-packages-alist
             '("" "float"))
(add-to-list 'org-latex-packages-alist
             '("" "longtable"))
(add-to-list 'org-latex-packages-alist
             '("" "tikz"))
(add-to-list 'org-latex-packages-alist
             '("" "fancyhdr"))
(add-to-list 'org-latex-packages-alist
             '("" "textcomp"))
(add-to-list 'org-latex-packages-alist
             '("" "amsmath"))
(add-to-list 'org-latex-packages-alist
             '("" "amsthm"))
(add-to-list 'org-latex-packages-alist
             '("" "tabularx" t))
(add-to-list 'org-latex-packages-alist
             '("" "booktabs" t))
(add-to-list 'org-latex-packages-alist
             '("" "grffile" t))
(add-to-list 'org-latex-packages-alist
             '("" "wrapfig" t))
(add-to-list 'org-latex-packages-alist
             '("normalem" "ulem" t))
(add-to-list 'org-latex-packages-alist
             '("" "amssymb" t))
(add-to-list 'org-latex-packages-alist
             '("" "extarrows" t))
(add-to-list 'org-latex-packages-alist
             '("" "capt-of" t))
(add-to-list 'org-latex-packages-alist
             '("figuresright" "rotating" t))
(add-to-list 'org-latex-packages-alist
             '("Lenny" "fncychap" t))

(add-to-list 'org-latex-classes
             '("lengyue-org-book"
               "\\documentclass{book}
\\usepackage[slantfont, boldfont]{xeCJK}
% chapter set
\\usepackage{titlesec}
\\usepackage{hyperref}
\\hypersetup{colorlinks,linkcolor=black,filecolor=black,urlcolor=blue,citecolor=black}
\\usepackage{fontspec}
\\usepackage{xunicode}
\\titleformat{\\paragraph}{\\normalfont\\normalsize\\bfseries}{\\theparagraph}{1em}{}
[NO-DEFAULT-PACKAGES]
[PACKAGES]


\\setCJKmainfont{WenQuanYi Micro Hei} % 设置缺省中文字体
\\setCJKsansfont{WenQuanYi Micro Hei}
\\setCJKmonofont{WenQuanYi Micro Hei Mono}

\\setmainfont{DejaVu Sans} % 英文衬线字体
\\setsansfont{DejaVu Serif} % 英文无衬线字体
\\setmonofont{DejaVu Sans Mono}
%\\setmainfont{WenQuanYi Micro Hei} % 设置缺省中文字体
%\\setsansfont{WenQuanYi Micro Hei}
%\\setmonofont{WenQuanYi Micro Hei Mono}

%如果没有它，会有一些 tex 特殊字符无法正常使用，比如连字符。
\\defaultfontfeatures{Mapping=tex-text}

% 中文断行
\\XeTeXlinebreaklocale \"zh\"
\\XeTeXlinebreakskip = 0pt plus 1pt minus 0.1pt

% 代码设置
\\lstset{numbers=left,
numberstyle= \\tiny,
keywordstyle= \\color{ blue!70},commentstyle=\\color{red!50!green!50!blue!50},
frame=shadowbox,
breaklines=true,
rulesepcolor= \\color{ red!20!green!20!blue!20}
}

[EXTRA]
"
                 ("\\chapter{%s}" . "\\chapter*{%s}")
                 ("\\section{%s}" . "\\section*{%s}")
                 ("\\subsection{%s}" . "\\subsection*{%s}")
                 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                 ("\\paragraph{%s}" . "\\paragraph*{%s}")
                 ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

(add-to-list 'org-latex-classes
             '("lengyue-org-article"
               "\\documentclass{article}
\\usepackage[slantfont, boldfont]{xeCJK}
\\usepackage{titlesec}
\\usepackage{hyperref}
\\hypersetup{colorlinks,linkcolor=black,filecolor=black,urlcolor=blue,citecolor=black}
\\usepackage{fontspec}
\\usepackage{xunicode}
\\titleformat{\\paragraph}{\\normalfont\\normalsize\\bfseries}{\\theparagraph}{1em}{}

[NO-DEFAULT-PACKAGES]
[PACKAGES]

\\parindent 2em

\\setCJKmainfont{WenQuanYi Micro Hei} % 设置缺省中文字体
\\setCJKsansfont{WenQuanYi Micro Hei}
\\setCJKmonofont{WenQuanYi Micro Hei Mono}

\\setmainfont{DejaVu Sans} % 英文衬线字体
\\setsansfont{DejaVu Serif} % 英文无衬线字体
\\setmonofont{DejaVu Sans Mono}
%\\setmainfont{WenQuanYi Micro Hei} % 设置缺省中文字体
%\\setsansfont{WenQuanYi Micro Hei}
%\\setmonofont{WenQuanYi Micro Hei Mono}

%如果没有它，会有一些 tex 特殊字符无法正常使用，比如连字符。
\\defaultfontfeatures{Mapping=tex-text}

% 中文断行
\\XeTeXlinebreaklocale \"zh\"
\\XeTeXlinebreakskip = 0pt plus 1pt minus 0.1pt

% 代码设置
\\lstset{numbers=left,
numberstyle= \\tiny,
keywordstyle= \\color{ blue!70},commentstyle=\\color{red!50!green!50!blue!50},
frame=shadowbox,
breaklines=true,
rulesepcolor= \\color{ red!20!green!20!blue!20}
}

[EXTRA]
"
                 ("\\section{%s}" . "\\section*{%s}")
                 ("\\subsection{%s}" . "\\subsection*{%s}")
                 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                 ("\\paragraph{%s}" . "\\paragraph*{%s}")
                 ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

(add-to-list 'org-latex-classes
             '("lengyue-org-beamer"
               "\\documentclass{beamer}
\\usepackage[slantfont, boldfont]{xeCJK}
% beamer set
\\usepackage[none]{hyphenat}
\\usepackage[abs]{overpic}
\\usepackage{fontspec}
\\usepackage{xunicode}


[NO-DEFAULT-PACKAGES]
[PACKAGES]

\\setCJKmainfont{WenQuanYi Micro Hei} % 设置缺省中文字体
\\setCJKsansfont{WenQuanYi Micro Hei}
\\setCJKmonofont{WenQuanYi Micro Hei Mono}

\\setmainfont{DejaVu Sans} % 英文衬线字体
\\setsansfont{DejaVu Serif} % 英文无衬线字体
\\setmonofont{DejaVu Sans Mono}
%\\setmainfont{WenQuanYi Micro Hei} % 设置缺省中文字体
%\\setsansfont{WenQuanYi Micro Hei}
%\\setmonofont{WenQuanYi Micro Hei Mono}

%如果没有它，会有一些 tex 特殊字符无法正常使用，比如连字符。
\\defaultfontfeatures{Mapping=tex-text}

% 中文断行
\\XeTeXlinebreaklocale \"zh\"
\\XeTeXlinebreakskip = 0pt plus 1pt minus 0.1pt

% 代码设置
\\lstset{numbers=left,
numberstyle= \\tiny,
keywordstyle= \\color{ blue!70},commentstyle=\\color{red!50!green!50!blue!50},
frame=shadowbox,
breaklines=true,
rulesepcolor= \\color{ red!20!green!20!blue!20}
}

[EXTRA]
"
                 ("\\section{%s}" . "\\section*{%s}")
                 ("\\subsection{%s}" . "\\subsection*{%s}")
                 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                 ("\\paragraph{%s}" . "\\paragraph*{%s}")
                 ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

(setq org-latex-pdf-process
        '("xelatex -interaction nonstopmode -output-directory %o %f"
          ;; "biber %b" "xelatex -interaction nonstopmode -output-directory %o %f"
          "bibtex %b"
          "xelatex -interaction nonstopmode -output-directory %o %f"
          "xelatex -interaction nonstopmode -output-directory %o %f"))

;; (defcustom org-preview-latex-process-alist
;;    (quote
;;     (
;;      (dvipng :programs
;;              ("latex" "dvipng")
;;              :description "dvi > png" :message "you need to install the programs: latex and dvipng." :image-input-type "dvi" :image-output-type "png" :image-size-adjust
;;              (1.0 . 1.0)
;;              :latex-compiler
;;              ("latex -interaction nonstopmode -output-directory %o %f")
;;              :image-converter
;;              ("dvipng -fg %F -bg %B -D %D -T tight -o %O %f"))
;;      (dvisvgm :programs
;;               ("latex" "dvisvgm")
;;               :description "xdv > svg" :message "you need to install the programs: latex and dvisvgm." :use-xcolor t :image-input-type "xdv" :image-output-type "svg" :image-size-adjust
;;               (1.0 . 1.0)
;;               :latex-compiler
;;               ("xelatex -no-pdf -interaction nonstopmode -output-directory %o %f")
;;               :image-converter
;;               ("dvisvgm %f   %O"))
;;      (imagemagick :programs
;;                   ("latex" "convert")
;;                   :description "pdf > png" :message "you need to install the programs: latex and imagemagick." :use-xcolor t :image-input-type "pdf" :image-output-type "png" :image-size-adjust
;;                   (1.0 . 1.0)
;;                   :latex-compiler
;;                   ("xelatex -interaction nonstopmode -output-directory %o %f")
;;                   :image-converter
;;                   ("convert -density %D -trim -antialias %f -quality 100 %O")))))

;; lualatex preview

;; (setq org-preview-latex-process-alist
;;       (plist-put (alist-get 'dvisvgm org-preview-latex-process-alist)
;;                  :description "xdv > svg" :message "you need to install the programs: latex and dvisvgm." :use-xcolor t :image-input-type "xdv" :image-output-type "svg" :image-size-adjust
;;                  ))

;; (setq org-preview-latex-process-alist
;;       (plist-put (alist-get 'dvisvgm org-preview-latex-process-alist)
;;                  :latex-compiler
;;                  ("xelatex -no-pdf -interaction nonstopmode -output-directory %o %f")))

;; (push (cons 'dvisvgm
;;             (plist-put (alist-get dvisvgm org-preview-latex-process-alist)
;;                        :description "xdv > svg" :message "you need to install the programs: latex and dvisvgm." :use-xcolor t :image-input-type "xdv" :image-output-type "svg" :image-size-adjust
;;                        ))
;;       org-preview-latex-process-alist)

;; (push (cons 'dvisvgm
;;             (plist-put (alist-get dvisvgm org-preview-latex-process-alist)
;;                        :latex-compiler
;;                        ("xelatex -no-pdf -interaction nonstopmode -output-directory %o %f")))
;;       org-preview-latex-process-alist)


;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(org-preview-latex-process-alist
;;    (quote
;;     ((dvipng :programs
;;              ("latex" "dvipng")
;;              :description "dvi > png" :message "you need to install the programs: latex and dvipng." :image-input-type "dvi" :image-output-type "png" :image-size-adjust
;;              (1.0 . 1.0)
;;              :latex-compiler
;;              ("latex -interaction nonstopmode -output-directory %o %f")
;;              :image-converter
;;              ("dvipng -fg %F -bg %B -D %D -T tight -o %O %f"))
;;      (dvisvgm :programs
;;               ("latex" "dvisvgm")
;;               :description "xdv > svg" :message "you need to install the programs: latex and dvisvgm." :use-xcolor t :image-input-type "xdv" :image-output-type "svg" :image-size-adjust
;;               (1.0 . 1.0)
;;               :latex-compiler
;;               ("xelatex -no-pdf -interaction nonstopmode -output-directory %o %f")
;;               :image-converter
;;               ("dvisvgm %f -n -b min -c %S -o %O"))
;;      (imagemagick :programs
;;                   ("latex" "convert")
;;                   :description "pdf > png" :message "you need to install the programs: latex and imagemagick." :use-xcolor t :image-input-type "pdf" :image-output-type "png" :image-size-adjust
;;                   (1.0 . 1.0)
;;                   :latex-compiler
;;                   ("xelatex -interaction nonstopmode -output-directory %o %f")
;;                   :image-converter
;;                   ("convert -density %D -trim -antialias %f -quality 100 %O")))))
;; )

(setq org-format-latex-options (plist-put org-format-latex-options :html-scale 1.2))

;; (defun org-renumber-environment (orig-func &rest args)
;;   (let ((results '()) 
;;   (counter -1)
;;   (numberp))

;;     (setq results (loop for (begin .  env) in 
;;       (org-element-map (org-element-parse-buffer) 'latex-environment
;;         (lambda (env)
;;           (cons
;;            (org-element-property :begin env)
;;            (org-element-property :value env))))
;;       collect
;;       (cond
;;        ((and (string-match "\\\\begin{equation}" env)
;;              (not (string-match "\\\\tag{" env)))
;;         (incf counter)
;;         (cons begin counter))
;;        ((string-match "\\\\begin{align}" env)
;;         (prog2
;;             (incf counter)
;;             (cons begin counter)			    
;;           (with-temp-buffer
;;             (insert env)
;;             (goto-char (point-min))
;;             ;; \\ is used for a new line. Each one leads to a number
;;             (incf counter (count-matches "\\\\$"))
;;             ;; unless there are nonumbers.
;;             (goto-char (point-min))
;;             (decf counter (count-matches "\\nonumber")))))
;;        (t
;;         (cons begin nil)))))

;;     (when (setq numberp (cdr (assoc (point) results)))
;;       (setf (car args)
;;       (concat
;;        (format "\\setcounter{equation}{%s}\n" numberp)
;;        (car args)))))

;;   (apply orig-func args))

;; (advice-add 'org-create-formula-image :around #'org-renumber-environment)

;; (advice-remove 'org-create-formula-image #'org-renumber-environment)

;; specify the justification you want
;; (plist-put org-format-latex-options :justify 'center)

;; (defun org-justify-fragment-overlay (beg end image imagetype)
;;   "Adjust the justification of a LaTeX fragment.
;; The justification is set by :justify in
;; `org-format-latex-options'. Only equations at the beginning of a
;; line are justified."
;;   (cond
;;    ;; Centered justification
;;    ((and (eq 'center (plist-get org-format-latex-options :justify)) 
;;    (= beg (line-beginning-position)))
;;     (let* ((img (create-image image 'imagemagick t))
;;      (width (car (image-size img)))
;;      (offset (floor (- (/ (window-text-width) 2) (/ width 2)))))
;;       (overlay-put (ov-at) 'before-string (make-string offset ? ))))
;;    ;; Right justification
;;    ((and (eq 'right (plist-get org-format-latex-options :justify)) 
;;    (= beg (line-beginning-position)))
;;     (let* ((img (create-image image 'imagemagick t))
;;      (width (car (image-display-size (overlay-get (ov-at) 'display))))
;;      (offset (floor (- (window-text-width) width (- (line-end-position) end)))))
;;       (overlay-put (ov-at) 'before-string (make-string offset ? ))))))

;; (defun org-latex-fragment-tooltip (beg end image imagetype)
;;   "Add the fragment tooltip to the overlay and set click function to toggle it."
;;   (overlay-put (ov-at) 'help-echo
;;          (concat (buffer-substring beg end)
;;            "mouse-1 to toggle."))
;;   (overlay-put (ov-at) 'local-map (let ((map (make-sparse-keymap)))
;;             (define-key map [mouse-1]
;;               `(lambda ()
;;            (interactive)
;;            (org-remove-latex-fragment-image-overlays ,beg ,end)))
;;             map)))

;; advise the function to a
;; (advice-add 'org--format-latex-make-overlay :after 'org-justify-fragment-overlay)
;; (advice-add 'org--format-latex-make-overlay :after 'org-latex-fragment-tooltip)

;; (advice-remove 'org--format-latex-make-overlay 'org-justify-fragment-overlay)
;; (advice-remove 'org--format-latex-make-overlay 'org-latex-fragment-tooltip)
