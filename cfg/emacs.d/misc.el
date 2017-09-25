(setq vc-follow-symlinks 1)

(global-set-key (kbd "C-.")
                (lambda ()
                  (interactive)
                  (save-excursion (mark-whole-buffer)
                  (indent-region (region-beginning) (region-end)))))

(setq gc-cons-threshold 800000)
