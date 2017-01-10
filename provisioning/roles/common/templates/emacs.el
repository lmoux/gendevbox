(require 'package)
(add-to-list 'package-archives
    '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)
(when (not package-archive-contents)
    (package-refresh-contents))

(defvar myPacks
    '(better-defaults
      elpy
      flycheck
      json-mode
      magit
      nginx-mode
      ;;material-theme
      color-theme-sanityinc-tomorrow
      web-mode
      cmake-mode
      org
      ))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
        (package-install package)))
    myPacks)

(setq inhibit-startup-message t)
(load-theme 'material t)
(global-linum-mode t)
(setq make-backup-files nil)
(setq auto-save-default nil)

(global-flycheck-mode)

