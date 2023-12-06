;; Save desktop state (see http://www.gnu.org/software/emacs/manual/html_node/emacs/Saving-Emacs-Sessions.html)

(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(use-package copilot
  :straight (:host github :repo "zerolfx/copilot.el" :files ("dist" "*.el"))
  :ensure t)
;; you can utilize :map :hook and :config to customize copilot


(defun rk/copilot-tab ()
  "Tab command that will complet with copilot if a completion is
available. Otherwise will try company, yasnippet or normal
tab-indent."
  (interactive)
  (or (copilot-accept-completion)
      (company-yasnippet-or-completion)
      (indent-for-tab-command)))

(define-key global-map (kbd "<tab>") #'rk/copilot-tab)

(defun rk/copilot-complete-or-accept ()
  "Command that either triggers a completion or accepts one if one
is available. Useful if you tend to hammer your keys like I do."
  (interactive)
  (if (copilot--overlay-visible)
      (progn
        (copilot-accept-completion)
        (open-line 1)
        (next-line))
    (copilot-complete)))

(define-key copilot-mode-map (kbd "M-C-<next>") #'copilot-next-completion)
(define-key copilot-mode-map (kbd "M-C-<prior>") #'copilot-previous-completion)
(define-key copilot-mode-map (kbd "M-C-<right>") #'copilot-accept-completion-by-word)
(define-key copilot-mode-map (kbd "M-C-<down>") #'copilot-accept-completion-by-line)
(define-key global-map (kbd "M-C-<return>") #'rk/copilot-complete-or-accept)
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
 '(copilot-node-executable "/usr/local/bin/node")
 '(package-selected-packages
   '(editorconfig toml python-isort python-pytest python-docstring python-black magit ## jedi auctex))
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
