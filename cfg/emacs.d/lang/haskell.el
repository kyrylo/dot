(defun haskell-init ()
  (indent-tabs-mode nil)
  (haskell-indentation-mode -1)
  (haskell-indent-mode -1))

(add-hook 'haskell-mode-hook 'haskell-init)
