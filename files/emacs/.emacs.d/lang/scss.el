(defun my-scss-mode-hook ()
  (setq-default scss-compile-at-save nil))
(add-hook 'scss-mode-hook 'my-scss-mode-hook)
