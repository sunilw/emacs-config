;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; transparency
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(set-frame-parameter (selected-frame) 'alpha '(99 . 99))
(add-to-list 'default-frame-alist '(alpha . (99 . 99)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Some basic stuff first
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp")
(savehist-mode 1)
(recentf-mode 1)
(global-linum-mode 1)
(global-auto-revert-mode t)

;; turn off bell
(setq ring-bell-function 'ignore)

(if (require 'sml-modeline nil 'noerror)    ;; use sml-modeline if available
    (progn
      (sml-modeline-mode 1)                   ;; show buffer pos in the mode line
      (scroll-bar-mode -1))                   ;; turn off the scrollbar
  (scroll-bar-mode 1)                       ;; otherwise, show a scrollbar...
  (set-scroll-bar-mode 'right))

;; (set-frame-parameter (selected-frame) 'alpha '(<active> [<inactive>]))
;; (set-frame-parameter (selected-frame) 'alpha '(100 100))
;; (add-to-list 'default-frame-alist '(alpha 95 100))

;; editor config
(add-to-list 'load-path "~/.emacs.d/lisp/editorconfig-emacs")
(require 'editorconfig)
(editorconfig-mode 1)

;; for petes sake, don't add newlines
(setq require-final-newline nil)

;; indent the buffer
(defun iwb ()
  "indent whole buffer"
  (interactive)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max) nil)
  (untabify (point-min) (point-max)))

(require 'xt-mouse)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; transparency
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  Flycheck
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(add-to-list 'load-path "~/.emacs.d/lisp/s.el")
(require 's)
(add-to-list 'load-path "~/.emacs.d/lisp/dash.el")
(require 'dash)


(add-to-list 'load-path "~/.emacs.d/lisp/flycheck")
(require 'flycheck)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;   eshell git prompt
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(add-to-list 'load-path "~/.emacs.d/lisp/eshell-git-prompt")
(require 'eshell-git-prompt)

(eshell-git-prompt-use-theme 'powerline)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  company mode
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d/lisp/company-mode")
(require 'company)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; popup
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d/lisp/popup-el")
(require 'popup)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  Right click 
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d/lisp/ordinal.el")
(require 'ordinal)

(add-to-list 'load-path "~/.emacs.d/lisp/right-click-context")
(require 'right-click-context)


;; (global-set-key (kbd "<mouse-3>") 'right-click-context-menu)
;; (bind-key "C-c <mouse-3>" 'right-click-context-menu)
;; (bind-key "C-c :" 'right-click-context-menu)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  websocket
;;  https://github.com/ahyatt/emacs-websocket
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d/lisp/emacs-websocket")
(require 'websocket)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  Slack
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; deps for slack: alert, circe, emojify, oauth2, request, websocket

(add-to-list 'load-path "~/.emacs.d/lisp/alert")
(require 'alert)

(add-to-list 'load-path "~/.emacs.d/lisp/circe")
(require 'circe)

(add-to-list 'load-path "~/.emacs.d/lisp/circe")
(require 'circe)

(add-to-list 'load-path "~/.emacs.d/lisp/oauth2")
(require 'oauth2)

(add-to-list 'load-path "~/.emacs.d/lisp/emacs-request")
(require 'request)

(add-to-list 'load-path "~/.emacs.d/lisp/emacs-slack")
(require 'slack)

;; slack config




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  Smart Mode Line
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d/lisp/rich-minority")
(require 'rich-minority)

(add-to-list 'load-path "~/.emacs.d/lisp/smart-mode-line")
(require 'smart-mode-line)
(setq sml/theme 'dark)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; transparency
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; (defun toggle-transparency ()
;;   (interactive)
;;   (let ((alpha (frame-parameter nil 'alpha)))
;;     (if (eq
;;          (if (numberp alpha)
;;              alpha
;;            (cdr alpha)) ; may also be nil
;;          100)
;;         (set-frame-parameter nil 'alpha '(98 . 50))
;;       (set-frame-parameter nil 'alpha '(100 . 100)))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; apache mode
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(require 'apache-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; editor config
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; (add-to-list 'load-path "~/.emacs.d/lisp/smartparens")
;;(require 'smartparens)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  flymake and friends
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; (add-to-list 'load-path "~/.emacs.d/lisp/emacs-flymake")
;; (require 'flymake)
;; (require 'flymake-cursor)

;; (add-to-list 'load-path "~/.emacs.d/lisp/flymake-easy")
;; (require 'flymake-easy)

;; (add-to-list 'load-path "~/.emacs.d/lisp/flymake-jslint")
;; (require 'flymake-jslint)
;; (add-hook 'js-mode-hook 'flymake-jslint-load)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  nyannyanyanyan
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(add-to-list 'load-path "~/.emacs.d/lisp/nyan-mode")
(require 'nyan-mode)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  yaml mode
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d/lisp/yaml-mode")
(require 'yaml-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  markdown mode
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(provide 'markdown-mode)

(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  slime
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Setup load-path, autoloads and your lisp system
(add-to-list 'load-path "~/.emacs.d/lisp/slime")
(require 'slime-autoloads)

(setq inferior-lisp-program "/usr/bin/sbcl")


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;   gulp task runner
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d/lisp/gulp-task-runner")
(require 'gulp-task-runner)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  js2-mode
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d/lisp/js2-mode")
(require 'js2-mode)

(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-to-list 'auto-mode-alist '(".bowerrc" . js2-mode))
(add-hook 'js2-mode-hook 'yas-minor-mode)

;; turn on lintnode
;; (add-hook 'js-mode-hook
;;        (lambda ()
;;          (run-hooks 'lintnode-hook)))

;; je-repl
(require 'js-comint)
;; Use node as our repl
(setq inferior-js-program-command "node")
(setq inferior-js-mode-hook
      (lambda ()
        ;; We like nice colors
        (ansi-color-for-comint-mode-on)
        ;; Deal with some prompt nonsense
        (add-to-list 'comint-preoutput-filter-functions
                     (lambda (output)
                       (replace-regexp-in-string ".*1G\.\.\..*5G" "..."
                                                 (replace-regexp-in-string ".*1G.*3G" "&gt;" output))))))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  js-comint
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'js-comint)
(setq inferior-js-program-command "/usr/bin/java org.mozilla.javascript.tools.shell.Main")
(add-hook 'js2-mode-hook '(lambda ()
                            (local-set-key "\C-x\C-e" 'js-send-last-sexp)
                            (local-set-key "\C-\M-x" 'js-send-last-sexp-and-go)
                            (local-set-key "\C-cb" 'js-send-buffer)
                            (local-set-key "\C-c\C-b" 'js-send-buffer-and-go)
                            (local-set-key "\C-cl" 'js-load-file-and-go)
                            ))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  php-mode
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d/lisp/php-mode")
(require 'php-mode )

(add-hook 'php-mode-hook (lambda () (subword-mode 1)))



;; php manual on popup



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  psysh
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; (add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp/php-runtime.el"))
;; (require 'php-runtime)

;; (add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp/psysh.el"))
;; (require 'psysh)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  boris
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'highlight)

(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp/php-boris"))
(require 'php-boris)

(add-to-list 'load-path "~/.emacs.d/lisp/php-boris-minor-mode")

(require 'php-boris-minor-mode)
(add-hook 'php-mode-hook 'php-boris-minor-mode)
(add-hook 'web-mode-hook 'php-boris-minor-mode)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; get lock files and autosaves out of the way
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(setq backup-directory-alist `(("." . "~/.saves")))
(setq backup-by-copying t)
(setq delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)

(setq auto-save-file-name-transforms
      `((".*" ,"~/.saves/" t)))


(setq create-lockfiles nil)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; prevent annoying "really really close buffer?" crap
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(remove-hook 'kill-buffer-query-functions 'server-kill-buffer-query-function)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; load geben for php debugging
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d/lisp/geben-on-emacs")
(require 'geben)

(setq geben-dbgp-default-port  '9001)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; helm!
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d/lisp/helm")
(require 'helm-config)
(global-set-key (kbd "C-<tab>") 'helm-mini)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; auto-complete
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d/lisp/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/lisp/auto-complete/dict")
(ac-config-default)

(add-to-list 'ac-modes 'coffee-mode)
(add-to-list 'ac-modes 'js-mode)
(add-to-list 'ac-modes 'python-mode)
(add-to-list 'ac-modes 'shell-mode)
(add-to-list 'ac-modes 'sass-mode)
(add-to-list 'ac-modes 'web-mode)
(add-to-list 'ac-modes 'ruby-mode)
(add-to-list 'ac-modes 'rinari-minor-mode)
(add-to-list 'ac-modes 'rhtml-mode)
(add-to-list 'ac-modes 'rhtml)
(add-to-list 'ac-modes 'inf-ruby)
(add-to-list 'ac-modes 'scss-mode)
(add-to-list 'ac-modes 'rjsx-mode)

;; try and fix auto-complete mode with web mode


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; yasnippet
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;
;; Set things up for an angular snippet package that uses yas
;; First load deps...
;;


;; no load yasnippet

(add-to-list 'load-path "~/.emacs.d/lisp/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)

;;(setq yas/snippet-dirs "~/.emacs.d/lisp/yasnippet/snippets")

;;(setq yas-snippet-dirs '("~/emacs.d/lisp/yasnippets/snippets"))

;; (yas/load-directory "~/.emacs.d/lisp/yasnippet/snippets")

;; (yas--initialize)

(yas-reload-all)


;;fix broken yas behaviour
;; (defun yas/advise-indent-function (function-symbol)
;;   (eval `(defadvice ,function-symbol (around yas/try-expand-first activate)
;;            ,(format
;;              "Try to expand a snippet before point, then call `%s' as usual"
;;              function-symbol)
;;            (let ((yas/fallback-behavior nil))
;;              (unless (and (interactive-p)
;;                           (yas/expand))
;;                ad-do-it)))))


;; (yas/advise-indent-function 'css-mode-indent-line)
(global-set-key (kbd "C-c C-r") 'sgml-tag)

;;
;;  mode support for yas
;;

(add-hook 'scss-mode-hook 'yas-minor-mode)
(add-hook 'ruby-mode-hook 'yas-minor-mode)
(add-hook 'rhtml-mode-hook 'yas-minor-mode)
(add-hook 'php-mode-hook 'yas-minor-mode)
(add-hook 'web-mode-hook 'yas-minor-mode)
(add-hook 'rjsx-mode-hook 'yas-minor-mode)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  node repl
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; node repl
(require 'nodejs-repl)
(require 'nodejs-repl-eval)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  json mode
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d/lisp/json-snatcher")
(require 'json-snatcher)

(add-to-list 'load-path "~/.emacs.d/lisp/json-reformat")
(require 'json-reformat)

(add-to-list 'load-path "~/.emacs.d/lisp/json-snatcher")
(require 'json-snatcher)

(add-to-list 'load-path "~/.emacs.d/lisp/json-mode")
(require 'json-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; color theme
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d/lisp/color-theme-6.6.0")
(require 'color-theme)
 (load-file
  "~/.emacs.d/lisp/color-theme-6.6.0/themes/color-theme-wombat/color-theme-wombat.el")

(add-to-list 'load-path "~/.emacs.d/lisp/color-theme-6.6.0/themes/dracula")
 (load-file
  "~/.emacs.d/lisp/color-theme-6.6.0/themes/dracula/dracula-theme.el")


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  emmet!
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d/lisp/emmet-mode")
(require 'emmet-mode)

(add-hook 'web-mode-hook 'emmet-mode)
(add-hook 'rhtml-mode-hook 'emmet-mode)
(add-hook 'php-mode-hook 'emmet-mode)
(add-hook 'php-mode-hook 'rjsx-mode)
(add-hook 'emmet-mode-hook (lambda () (setq emmet-indentation 2)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  ac-emmet
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d/lisp/ac-emmet")
(require 'ac-emmet)
(add-hook 'sgml-mode-hook 'ac-emmet-html-setup)
(add-hook 'css-mode-hook 'ac-emmet-css-setup)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  php-auto-yasnippets
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d/lisp/php-auto-yasnippets")
(require 'php-auto-yasnippets)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  web mode
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(load-library "~/.emacs.d/lisp/web-mode/web-mode.el")

(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
(add-hook 'web-mode-hook 'wrap-region-mode)

;;  enable JSX syntax highlighting in .js/.jsx files
(setq web-mode-content-types-alist '(("jsx" . "\\.js[x]?\\'")))

(defun web-mode-init ()
  "web-mode config."
  (setq web-mode-markup-indent-offset 4)
  (setq web-mode-code-indent-offset 4)
  (setq web-mode-indent-style 2)
  (setq web-mode-prefer-server-commenting t)
  (comment-auto-fill)
  (auto-complete-init)
  (emmet-mode t)
  (yas-minor-mode t)
  (linum-mode t)
  )

(add-hook 'web-mode-hook 'web-mode-init)

( add-hook 'web-mode-hook
           '(lambda ()
              (yas-minor-mode)
              (linum-mode)
              (electric-pair-mode)
              (emmet-mode)
              )
           )



;; auto-complete sources for web-mode
;; (setq web-mode-ac-sources-alist
;;       '(("css" . (ac-source-css-property))
;;      ("html" . (ac-source-words-in-buffer ac-source-abbrev)))
;;       )

(setq web-mode-ac-sources-alist
      '(("css" . (ac-source-words-in-buffer ac-source-css-property))
        ("html" . (ac-source-words-in-buffer ac-source-abbrev))
        ("php" . (ac-source-words-in-buffer
                  ac-source-words-in-same-mode-buffers
                  ac-source-dictionary))))

(ac-define-source web-mode
  '((candidates . ac-web-mode-candidates)))


;; Here is a sample config for editing PHP templates,
;;  using php-auto-yasnippets, emmet-mode, and ac-emmet:
(add-hook 'web-mode-before-auto-complete-hooks
          '(lambda ()
             (let ((web-mode-cur-language
                    (web-mode-language-at-pos)))
               (if (string= web-mode-cur-language "php")
                   (yas-activate-extra-mode 'php-mode)
                 (yas-deactivate-extra-mode 'php-mode))
               (if (string= web-mode-cur-language "css")
                   (setq emmet-use-css-transform t)
                 (setq emmet-use-css-transform nil)))))

;; make php-mode indentation vaguely sane
(add-hook 'php-mode-hook
          (lambda ()
            (setq indent-tabs-mode t)
            (setq tab-width 4)
            (c-set-offset 'substatement-open 0)))

(add-hook 'php-mode-hook 'auto-complete-mode 1)

(setq web-mode-enable-current-element-highlight t)

;; Enable JSX syntax highlighting in .js/.jsx files, add this to your emacs configuration:
(setq web-mode-content-types-alist '(("jsx" . "\\.js[x]?\\'")))

;; Configure indentation and any other preferences in the web-mode-init-hook
(defun web-mode-init-hook ()
  "Hooks for Web mode.  Adjust indent."
  (setq web-mode-markup-indent-offset 4))
(add-hook 'web-mode-hook  'web-mode-init-hook)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  formatting for JSX
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; (add-to-list 'load-path "~/.emacs.d/lisp/rjsx-mode")
;; (require 'rjsx-mode)

;; (add-to-list 'auto-mode-alist '("components\\/.*\\.js\\'" . rjsx-mode))

;;(setq web-mode-content-types-alist
;;      '(("jsx" . "\\.js[x]?\\'")))

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))

(add-hook 'web-mode-hook
          (lambda ()
            (if (equal web-mode-content-type "javascript")
                (web-mode-set-content-type "jsx")
              (message "now set to: %s" web-mode-content-type))))


;; use web-mode for .jsx files
;;(add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))



;; turn on flychecking globally
(add-hook 'after-init-hook #'global-flycheck-mode)

;; disable jshint since we prefer eslint checking
(setq-default flycheck-disabled-checkers
              (append flycheck-disabled-checkers
                      '(javascript-jshint)))

;; use eslint with web-mode for jsx files
(flycheck-add-mode 'javascript-eslint 'web-mode)

;; customize flycheck temp file prefix
(setq-default flycheck-temp-prefix ".flycheck")

;; disable json-jsonlist checking for json files
(setq-default flycheck-disabled-checkers
              (append flycheck-disabled-checkers
                      '(json-jsonlist)))


;; for better jsx syntax-highlighting in web-mode
;; - courtesy of Patrick @halbtuerke
(defadvice web-mode-highlight-part (around tweak-jsx activate)
  (if (equal web-mode-content-type "jsx")
      (let ((web-mode-enable-part-face nil))
        ad-do-it)
    ad-do-it))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;   jsx-mode
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path   "~/.emacs.d/lisp/jsx-mode.el")
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . jsx-mode))
(autoload 'jsx-mode "jsx-mode" "JSX mode" t)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  swank-js
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(slime-setup '(slime-repl))

(add-to-list 'load-path   "~/.emacs.d/lisp/haml-mode")
(add-to-list 'load-path "~/.emacs.d/lisp/swank-js")
(require 'slime-js)

(global-set-key [f5] 'slime-js-reload)
(add-hook 'js2-mode-hook
          (lambda ()
            (slime-js-minor-mode 1)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  sass-mode
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; looks like we need haml-mode first
(add-to-list 'load-path   "~/.emacs.d/lisp/haml-mode")
(require 'haml-mode)

(add-to-list 'load-path   "~/.emacs.d/lisp/sass-mode")
(require 'sass-mode)

(add-hook 'sass-mode-hook 'linum-mode)
(add-hook 'sass-mode-hook 'global-auto-revert-mode)
(add-hook 'sass-mode-hook 'auto-complete-mode)
(add-hook 'sass-mode-hook 'yas-minor-mode)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  less-css-mode
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; looks like we need haml-mode first
(add-to-list 'load-path   "~/.emacs.d/lisp/less-css-mode")
(require 'less-css-mode)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  php adjustments
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; php-mode indentation is less then ideal
;; lets see if we can unbreak it
;; http://www.emacswiki.org/emacs/PhpMode#toc16

(add-hook 'php-mode-hook (lambda ()
                           (defun ywb-php-lineup-arglist-intro (langelem)
                             (save-excursion
                               (goto-char (cdr langelem))
                               (vector (+ (current-column) c-basic-offset))))
                           (defun ywb-php-lineup-arglist-close (langelem)
                             (save-excursion
                               (goto-char (cdr langelem))
                               (vector (current-column))))
                           (c-set-offset 'arglist-intro 'ywb-php-lineup-arglist-intro)
                           (c-set-offset 'arglist-close 'ywb-php-lineup-arglist-close)))

;; fix  broken css indentation
(setq cssm-indent-level 4)
(setq cssm-newline-before-closing-bracket t)
(setq cssm-indent-function #'cssm-c-style-indenter)
(setq cssm-mirror-mode nil)
;; while we are here...
(add-hook 'css-mode-hook 'smartparens-mode)
(add-hook 'css-mode-hook 'yas-minor-mode)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  Company-mode
;;  required for jade
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d/lisp/company-mode")
(require 'company)

(add-to-list 'load-path "~/.emacs.d/lisp/Highlight-Indentation-for-Emacs")
(require 'highlight-indentation)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  python and django things
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




(add-to-list 'load-path "~/.emacs.d/lisp/find-file-in-project")
(require 'find-file-in-project)

(add-to-list 'load-path "~/.emacs.d/lisp/emacs-deferred")
(require 'deferred)

;;(add-to-list 'load-path "~/.emacs.d/lisp/cask")
;;(require 'cask)

(add-to-list 'load-path "~/.emacs.d/lisp/emacs-python-environment")
(require 'python-environment)

(add-to-list 'load-path "~/.emacs.d/lisp/emacs-ctable")
(require 'ctable)

(add-to-list 'load-path "~/.emacs.d/lisp/emacs-epc")
(require 'epc)

(add-to-list 'load-path "~/.emacs.d/lisp/python-django.el")
(require 'python-django)

(setq python-shell-interpreter "/home/mantis/.pyenv/shims/python")

;; pony
(add-to-list 'load-path "~/.emacs.d/lisp/pony-mode")
(add-to-list 'load-path "~/.emacs.d/lisp/pony-mode/src")
(require 'pony-mode)

(add-to-list 'load-path   "~/.emacs.d/lisp/emacs-jedi")
(require 'jedi)


;; connect to pyflakes
;; (when (load "flymake" t)
;;   (defun flymake-pyflakes-init ()
;;     (let* ((temp-file (flymake-init-create-temp-buffer-copy
;;                        'flymake-create-temp-inplace))
;;            (local-file (file-relative-name
;;                         temp-file
;;                         (file-name-directory buffer-file-name))))
;;       (list "pyflakes" (list local-file))))

;;   (add-to-list 'flymake-allowed-file-name-masks
;;                '("\\.py\\'" flymake-pyflakes-init)))

;; (add-hook 'find-file-hook 'flymake-find-file-hook)

;; get tab completions?
(eval-after-load "python"
  '(define-key inferior-python-mode-map "\t" 'python-shell-completion-complete-or-indent))

;;(add-to-list 'load-path "~/.emacs.d/lisp/emacs-helm-pydoc")
;;(require 'helm-pydoc)
;; (eval-after-load "python"
;;   '(progn
;;      (define-key python-mode-map (kbd "C-c C-d") 'helm-pydoc)))


(add-to-list 'load-path "~/.emacs.d/lisp/f.el")
(require 'f)

(add-to-list 'load-path "~/.emacs.d/lisp/pythonic")
(require 'pythonic)

;; (add-to-list 'load-path "~/.emacs.d/lisp/pyenv-mode")
;; (require 'pyenv-mode)

(add-to-list 'load-path "~/.emacs.d/lisp/pyenv.el")
(require 'pyenv)

(add-to-list 'load-path "~/.emacs.d/lisp/pyvenv")
(require 'pyenv)


(add-to-list 'load-path "~/.emacs.d/lisp/elpy")
(require 'elpy)
(package-initialize)
(elpy-enable)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  anaconda
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d/lisp/anaconda-mode")
(require 'anaconda-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; ruby things
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Setting rbenv path
(setenv "PATH" (concat (getenv "HOME") "/.rbenv/shims:" (getenv "HOME") "/.rbenv/bin:" (getenv "PATH")))
(setq exec-path (cons (concat (getenv "HOME") "/.rbenv/shims") (cons (concat (getenv "HOME") "/.rbenv/bin") exec-path)))

(add-to-list 'load-path "~/.emacs.d/lisp/rhtml")
(require 'rhtml-mode)

(add-to-list 'load-path "~/.emacs.d/lisp/inf-ruby")
(autoload 'inf-ruby "inf-ruby" "Run an inferior Ruby process" t)
(add-hook 'ruby-mode-hook 'inf-ruby-minor-mode)

(add-to-list 'load-path "~/.emacs.d/lisp/emacs-pry")
(require 'pry)
(global-set-key [S-f9] 'pry-intercept)
(global-set-key [f9] 'pry-intercept-rerun)

;; ruby mode for Gemfiles
(setq auto-mode-alist (cons '("\\.rjs\\'" . ruby-mode) auto-mode-alist))
;; Rakefiles are Ruby files:
(setq auto-mode-alist (cons '("\\Rakefile\\'" . ruby-mode) auto-mode-alist))
;; So is Gemfile:
(setq auto-mode-alist (cons '("\\Gemfile\\'" . ruby-mode) auto-mode-alist))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  db client
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; (add-to-list 'load-path "~/.emacs.d/lisp/emacs-edbi")
;; (require 'edbi)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  http://www.emacswiki.org/emacs/BackupDirectory
;;  move autosave files out of the present working directory
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq
 backup-by-copying t      ; don't clobber symlinks
 backup-directory-alist
 '(("." . "~/.saves"))    ; don't litter my fs tree
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2
 version-control t)       ; use versioned backups

(message "Deleting old backup files...")
(let ((week (* 60 60 24 7))
      (current (float-time (current-time))))
  (dolist (file (directory-files temporary-file-directory t))
    (when (and (backup-file-name-p file)
               (> (- current (float-time (fifth (file-attributes file))))
                  week))
      (message "%s" file)
      (delete-file file))))

;; paredit fix!
;; prevents extra space being thrown in
(defun paredit-space-for-delimiter-p (endp delimiter)
  (and (not (if endp (eobp) (bobp)))
       (memq (char-syntax (if endp (char-after) (char-before)))
             (list ?\"  ;; REMOVED ?w ?_
                   (let ((matching (matching-paren delimiter)))
                     (and matching (char-syntax matching)))))))




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;   restclient
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d/lisp/restclient.el")
(require 'restclient)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; scss mode
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d/lisp/scss-mode")
(autoload 'scss-mode "scss-mode")
(setq scss-compile-at-save nil)
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))
(add-hook 'scss-mode-hook 'auto-complete-mode 1)
(add-hook 'scss-mode-hook 'smartparens-mode)

(setq scss-compile-at-save  nil )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; erc notify
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;  utf-8 always and forever
(setq erc-server-coding-system '(utf-8 ))

(autoload 'erc-nick-notify-mode "erc-nick-notify"
  "Minor mode that calls `erc-nick-notify-cmd' when his nick gets
  mentioned in an erc channel" t)
(eval-after-load 'erc '(erc-nick-notify-mode t))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  neotree
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; (add-to-list 'load-path "~/.emacs.d/lisp/emacs-neotree")
                                        ; (require 'neotree)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  tern
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/opt/tern/emacs")
(require 'tern)

(eval-after-load 'tern
  '(progn
     (require 'tern-auto-complete)
     (tern-ac-setup)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  js3 mode
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(add-to-list 'load-path "~/.emacs.d/lisp/js3-mode")
(require 'js3-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  js-commint
;;  https://github.com/redguardtoo/js-comint
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;(add-to-list 'load-path "~/.emacs.d/lisp/js-commint")
;;(require 'js-comint)
;;(setq inferior-js-program-command "/usr/bin/node")


;;You can add the following couple of lines to your .emacs
;; to take advantage of cool key bindings for sending things to the javascript interpreter
;; inside of Steve Yegge’s most excellent js2-mode.

(add-hook 'js2-mode-hook
          (lambda ()
            (local-set-key (kbd "C-x C-e") 'js-send-last-sexp)
            (local-set-key (kbd "C-M-x") 'js-send-last-sexp-and-go)
            (local-set-key (kbd "C-c b") 'js-send-buffer)
            (local-set-key (kbd "C-c C-b") 'js-send-buffer-and-go)
            (local-set-key (kbd "C-c l") 'js-load-file-and-go)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  seq
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d/lisp/seq.el")
(require 'seq)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  Skewer
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d/lisp/skewer-mode")
(require 'skewer-mode)
(add-hook 'html-mode-hook 'skewer-html-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  Indium deps
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d/lisp/json-process-client")
(require 'json-process-client)

;; (add-to-list 'load-path "~/.emacs.d/lisp/js2-refactor.el")
;; (require 'js2-refactor)

;; (add-to-list 'load-path "~/.emacs.d/lisp/multiple-cursors.el")
;; (require 'multiple-cursors-core)
;; (load-file "~/.emacs.d/lisp/multiple-cursors.el/multiple-cursors-core.el")
;; (require 'multiple-cursors-core)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  Indium
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; (add-to-list 'load-path "~/.emacs.d/lisp/Indium")
;; (require 'indium)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  jss
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d/lisp/jss")
(require 'jss)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  wooky
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d/lisp/wooky.el")
(require 'wooky)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  kite-mini
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d/lisp/kite-mini.el")
(require 'kite-mini)
(add-hook 'js-mode-hook (lambda () (kite-mini-mode t)))
(add-hook 'css-mode-hook (lambda () (kite-mini-mode t)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  Verb
;; http client
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(add-to-list 'load-path "~/.emacs.d/lisp/verb")
(require 'verb)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  walkman
;; http client
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(require 'transient)

(add-to-list 'load-path "~/.emacs.d/lisp/walkman")
(require 'walkman)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; plz
;; http client
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(add-to-list 'load-path "~/.emacs.d/lisp/plz.el")
(require 'plz)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  everything else
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  everything else
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; customize mode-line
(set-face-foreground 'mode-line "white")
(set-face-background 'mode-line "purple")

(set-cursor-color "white")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-revert-check-vc-info t)
 '(browse-url-browser-function (quote browse-url-chromium))
 '(custom-safe-themes
   (quote
    ("3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "698f6c799733e1f051f41ba2f2e0a9487178834ceb495b3c21e06fb999699779" default)))
 '(erc-server-coding-system (quote (utf-8 . utf-8)) t)
 '(inhibit-startup-screen t)
 '(jabber-account-list (quote (("") ("sunilw@chat.facebook.com"))))
 '(package-selected-packages (quote (s)))
 '(require-final-newline nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Sans Pro" :foundry "adobe" :slant normal :weight light :height 162 :width normal))) nil (quote (nil ((t (:foreground "Green"))) t))))
