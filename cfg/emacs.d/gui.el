;; No welcome panes.
(setq inhibit-startup-message t
      initial-scratch-message nil)

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(column-number-mode t)
(global-linum-mode t)

(load-theme 'zenburn t)

(set-default-font "PragmataPro for Powerline-11")

(set-face-attribute 'vertical-border
                    nil
                    :foreground "#3f3f3f")
(set-fringe-mode '(1 . 0))
