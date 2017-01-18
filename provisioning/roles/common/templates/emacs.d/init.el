;; Package repositories that will be used
(require 'package)
(add-to-list 'package-archives
    '("melpa" . "http://melpa.org/packages/") t)
    ;; LMD> Not sure whether I should use the following url instead
    ;;      http://melpa.milkbox.net/packages/
(add-to-list 'package-archives
    '("marmalade" . "http://marmalade-repo.org/packages/") t)

(package-initialize)
(when (not package-archive-contents)
    (package-refresh-contents))
    ;; LMD> Need a way to periodically do package-refresh-contents
    ;;      perhaps via a cron job of something...

(defvar myPacks
    '(better-defaults
      elpy
      flycheck
      json-mode
      magit                             ;; Git stuff
      nginx-mode
      ;;material-theme
      
      grandshell-theme                  ;; Nice colourful, dark theme
      web-mode
      cmake-mode

      org                               ;; Organization inc. todo-lists
      org-board
      polymode                          ;; Allows for multiple modes 
      elfeed                            ;; RSS reader

      smex                              ;; Smart M-x enhancement
      flx-ido
      ido-vertical-mode
      ido-ubiquitous
      
      ;; project management stuff
      projectile

      ;; These are for dealing with lisp better including 
      ;; matching parenthesis
      paredit
      rainbow-delimiters

      ;; edit html tags like s-expressions
      tagedit
      ))

(defun prepare-package (package)
    (unless
        (package-installed-p package)
        (package-install package)))


(mapc 'prepare-package myPacks)

(load-theme 'grandshell t)

;; We are going to put a bunch of extra configurations in other files
(add-to-list 'load-path "~/.emacs.d/customizations")

(load "shell-integration.el")
(load "navigation.el")
(load "ui.el")
(load "editing.el")
(load "misc.el")
(load "orgconf.el")
(load "elisp-editing.el")
(load "setup-js.el")

