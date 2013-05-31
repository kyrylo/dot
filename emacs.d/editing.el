(setq-default fill-column 80)

(cua-selection-mode t)

(add-hook 'after-change-major-mode-hook 'fci-mode)

(setq-default abbrev-mode t)
(read-abbrev-file "~/.abbrev_defs")
(setq save-abbrevs t)

(global-set-key (kbd "C-=") 'er/expand-region)
