
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq default-frame-alist '((font . "Monaco-14")))
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(setq exec-path (append exec-path '("/Library/TeX/texbin")))
(setenv "PATH" "/usr/local/bin:/Library/TeX/texbin/:$PATH" t)

(progn
  (require 'package)
  (add-to-list 'package-archives
               '("melpa-stable" . "https://stable.melpa.org/packages/") t)
  (package-initialize))


; set latex mode to PDF
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-PDF-mode t)
 '(package-selected-packages (quote (magit ## jedi auctex))))

(setq-default indent-tabs-mode nil)

(add-hook 'python-mode-hook 'jedi:setup)
(autoload 'jedi:setup "jedi" nil t)

(require 'reftex)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)   ; with AUCTeX LaTeX mode
(add-hook 'latex-mode-hook 'turn-on-reftex)   ; with Emacs latex mode
(put 'downcase-region 'disabled nil)

(setq tramp-default-method "ssh")

(defvar ispell-tex-skip-alists
  '((("%\\[" . "%\\]")
     ;; All the standard LaTeX keywords from L. Lamport's guide:
     ;; \cite, \hspace, \hspace*, \hyphenation, \include, \includeonly, \input,
     ;; \label, \nocite, \rule (in ispell - rest included here)
     ("\\\\addcontentsline"              ispell-tex-arg-end 2)
     ("\\\\add\\(tocontents\\|vspace\\)" ispell-tex-arg-end)
     ("\\\\\\([aA]lph\\|arabic\\)"	 ispell-tex-arg-end)
     ("\\\\author"			 ispell-tex-arg-end)
     ("\\\\bibliographystyle"		 ispell-tex-arg-end)
     ("\\\\citep"		         ispell-tex-arg-end)
     ("\\\\citet"		         ispell-tex-arg-end)
     ("\\\\makebox"			 ispell-tex-arg-end 0)
     ;;("\\\\epsfig"		ispell-tex-arg-end)
     ("\\\\document\\(class\\|style\\)" .
      "\\\\begin[ \t\n]*{[ \t\n]*document[ \t\n]*}"))
    (;; delimited with \begin.  In ispell: displaymath, eqnarray, eqnarray*,
     ;; equation, minipage, picture, tabular, tabular* (ispell)
     ("\\(figure\\|table\\)\\*?"  ispell-tex-arg-end 0)
     ("list"			  ispell-tex-arg-end 2)
     ("program"		. "\\\\end[ \t\n]*{[ \t\n]*program[ \t\n]*}")
     ("verbatim\\*?"	. "\\\\end[ \t\n]*{[ \t\n]*verbatim\\*?[ \t\n]*}")
     ("gather\\*?"	. "\\\\end[ \t\n]*{[ \t\n]*gather\\*?[ \t\n]*}")))
  "*Lists of regions to be skipped in TeX mode.
First list is used raw.
Second list has key placed inside \\begin{}.

Delete or add any regions you want to be automatically selected
for skipping in latex mode.")

(defun unwrap-line ()
  "Remove all newlines until we get to two consecutive ones.
    Or until we reach the end of the buffer.
    Great for unwrapping quotes before sending them on IRC."
  (interactive)
  (let ((start (point))
        (end (copy-marker (or (search-forward "\n\n" nil t)
                              (point-max))))
        (fill-column (point-max)))
    (fill-region start end)
    (goto-char end)
    (newline)
    (goto-char start)))

(global-unset-key (kbd "C-x C-c"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
