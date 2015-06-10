(setq-default fill-column 80)

(cua-selection-mode t)

(add-hook 'after-change-major-mode-hook 'fci-mode)
(define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1)))
(global-fci-mode 1)

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
(ac-flyspell-workaround)

(dolist (m '(erlang-mode coffee-mode))
  (add-to-list 'ac-modes m))

(global-auto-complete-mode t)

(yas-global-mode 1)

(setq require-final-newline t)
(setq-default line-spacing 1)

(global-auto-revert-mode t)
(setq auto-revert-check-vc-info t)

(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))

(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
