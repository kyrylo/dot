(defun haskell-init ()
  (setq indent-tabs-mode nil))

(add-hook 'haskell-mode-hook 'haskell-init)
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
