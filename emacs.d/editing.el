(setq-default fill-column 80)

(cua-selection-mode t)

(add-hook 'after-change-major-mode-hook 'fci-mode)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(setq-default abbrev-mode t)
(read-abbrev-file "~/.abbrev_defs")
(setq save-abbrevs t)

(global-set-key (kbd "C-=") 'er/expand-region)

(setq whitespace-style '(face trailing))
(global-whitespace-mode t)

(smartparens-global-mode t)

(require 'auto-complete-config)
(setq-default auto-complete-mode t)
