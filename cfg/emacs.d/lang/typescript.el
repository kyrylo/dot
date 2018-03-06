(defun setup-typescript ()
  (setq typescript-indent-level 2
        typescript-expr-indent-offset 2
        typescript-auto-indent-flag nil))

(add-hook 'typescript-mode-hook #'setup-typescript)
