(defun ruby-init ()
  (yard-mode 1)
  (electric-indent-mode 1)
  (ruby-end-mode 1)
  (ruby-tools-mode 1))

(eval-after-load "ruby-mode"
    '(define-key ruby-mode-map (kbd "C-c C-c") 'xmp))
