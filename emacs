;; Save desktop state (see http://www.gnu.org/software/emacs/manual/html_node/emacs/Saving-Emacs-Sessions.html)

(desktop-save-mode 1)

(require 'use-package)
(require 'package)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(setq default-frame-alist '((font . "Monaco-16")))
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(setq exec-path (append exec-path '("/Library/TeX/texbin")))
(setq exec-path (append exec-path '("/opt/local/bin")))
(setq exec-path (append exec-path '("~/Library/Python/3.11/bin")))
(setenv "PATH" "~/Library/Python/3.11/bin:/opt/local/bin:/usr/local/bin:/Library/TeX/texbin/:$PATH" t)

(c-set-offset 'innamespace 0)



; set latex mode to PDF
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-PDF-mode t)
 '(package-selected-packages '(python-black magit ## jedi auctex))
 '(safe-local-variable-values
   '((eval c-set-offset 'innamespace 0)
     (eval condition-case nil
           (progn
             (ws-butler-mode))
           (error nil))
     (eval progn
           (add-to-list 'grep-find-ignored-files "*TAGS")
           (add-to-list 'grep-find-ignored-files "*cpp.py"))))
 '(warning-suppress-log-types '((comp)))
 '(warning-suppress-types '((comp))))

(setq-default indent-tabs-mode nil)

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t) 
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
 

(use-package python-black
  :demand t
  :after python
  :hook (python-mode . python-black-on-save-mode-enable-dwim))
