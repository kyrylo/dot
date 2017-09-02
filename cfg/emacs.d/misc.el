(setq vc-follow-symlinks 1)

;; Maps.
(global-set-key [f8] 'neotree-toggle)

(global-set-key (kbd "C-.")
                (lambda ()
                  (interactive)
                  (save-excursion (mark-whole-buffer)
                  (indent-region (region-beginning) (region-end)))))
