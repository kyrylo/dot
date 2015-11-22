;; Fill column indicator.
(setq-default fill-column 80)
(add-hook 'after-change-major-mode-hook 'fci-mode)
(define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1)))
(global-fci-mode 1)

;; Rectangular regions.
(cua-selection-mode t)

(global-set-key (kbd "C-=") 'er/expand-region)

(show-paren-mode t)
(global-hl-line-mode t)

(setq default-frame-alist '((cursor-color . "WhiteSmoke")))

;; Highlight blank lines with red.
(setq whitespace-style '(face trailing))
(global-whitespace-mode t)

(require 'autopair)
(autopair-global-mode)

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/dict")
(ac-config-default)
(ac-flyspell-workaround)

(dolist (m '(erlang-mode coffee-mode))
  (add-to-list 'ac-modes m))

(global-auto-complete-mode t)

(setq require-final-newline t)
(setq-default line-spacing 1)

(global-auto-revert-mode t)
(setq auto-revert-check-vc-info t)

(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
