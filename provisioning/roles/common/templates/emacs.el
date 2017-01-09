(require 'package)
(add-to-list 'package-archives
    `("melpa" . "http://melpa.org/packages/") t)

(package-initialize)
(when (not package-archive-contents)
    (package-refresh-contents))

(unless (package-installed-p 'use-package)
    (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)
