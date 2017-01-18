;; LMD> Many of these were taken from Brave Clojure's setup
;;      https://github.com/flyingmachine/emacs-for-clojure

(menu-bar-mode -1)
(tool-bar-mode -1)
(global-linum-mode)
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

;; full path in title bar
(setq-default frame-title-format "%b (%f)")
(setq ring-bell-function 'ignore)

;; These settings relate to how emacs interacts with your operating system
(setq ;; makes killing/yanking interact with the clipboard
    x-select-enable-clipboard t

    ;; I'm actually not sure what this does but it's recommended?
    x-select-enable-primary t

    ;; Save clipboard strings into kill ring before replacing them.
    ;; When one selects something in another program to paste it into Emacs,
    ;; but kills something in Emacs before actually pasting it,
    ;; this selection is gone unless this variable is non-nil
    save-interprogram-paste-before-kill t

    ;; Shows all options when running apropos. For more info,
    ;; https://www.gnu.org/software/emacs/manual/html_node/emacs/Apropos.html
    apropos-do-all t

    ;; Mouse yank commands yank at point instead of at click.
    mouse-yank-at-point t)

