(defun rust-init ()
  (flycheck-mode 1)
  (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))
(add-hook 'rust-mode-hook 'rust-init)
