(setq-default fill-column 80)

(cua-selection-mode t)

(add-hook 'after-change-major-mode-hook 'fci-mode)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key "\C-cd" 'kill-whole-line)

(setq whitespace-style '(face trailing))
(global-whitespace-mode t)

(require 'autopair)
(autopair-global-mode)

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/dict")
(ac-config-default)

(yas-global-mode 1)

(setq require-final-newline t)
(setq-default line-spacing 1)
