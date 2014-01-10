(global-set-key (kbd "C-.") (lambda ()
			      (interactive)
			      (save-excursion (mark-whole-buffer) (indent-region (region-beginning)
										 (region-end)))))
