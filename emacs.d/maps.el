(global-set-key (kbd "C-i") (lambda () (interactive) (save-excursion (mark-whole-buffer) (indent-region (region-beginning) (region-end)))))
