(defun ruby-init ()
  (yard-mode 1)
  (electric-indent-mode 1))

(add-hook 'ruby-mode-hook 'ruby-init)
