(setq ruby-deep-indent-paren nil)

(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))

(defun ruby-init ()
  (yard-mode 1)
  (electric-indent-mode 1)
  (ruby-end-mode 1)
  (ruby-tools-mode 1)
  (flycheck-mode 1)
  (local-set-key (kbd "RET") 'newline-and-indent)
  (minitest-mode 1))

(add-hook 'ruby-mode-hook 'ruby-init)

(eval-after-load "ruby-mode"
    '(define-key ruby-mode-map (kbd "C-c C-c") 'xmp))

(defadvice ruby-indent-line (after unindent-closing-paren activate)
  (let ((column (current-column))
        indent offset)
    (save-excursion
      (back-to-indentation)
      (let ((state (syntax-ppss)))
        (setq offset (- column (current-column)))
        (when (and (eq (char-after) ?\))
                   (not (zerop (car state))))
          (goto-char (cadr state))
          (setq indent (current-indentation)))))
    (when indent
      (indent-line-to indent)
      (when (> offset 0) (forward-char offset)))))
