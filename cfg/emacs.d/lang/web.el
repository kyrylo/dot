(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))

(defun my-web-mode-hook ()
  (setq web-mode-markup-indent-offset 2)
)
(add-hook 'web-mode-hook 'my-web-mode-hook)
