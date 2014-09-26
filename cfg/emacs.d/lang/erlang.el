(require 'flymake)
(defun flymake-erlang-init ()
  (let* ((temp-file (flymake-init-create-temp-buffer-copy
		     'flymake-create-temp-inplace))
	 (local-file (file-relative-name temp-file
                                         (file-name-directory buffer-file-name))))
    (list "~/.bin/flymake_erlang" (list local-file))))

(add-to-list 'flymake-allowed-file-name-masks '("\\.erl\\'" flymake-erlang-init))

(add-hook 'erlang-mode-hook '(lambda()
                               (setq indent-tabs-mode nil)))
(defvar erlang-electric-commands
  '(erlang-electric-comma
    erlang-electric-semicolon
    erlang-electric-gt))

(setq erlang-electric-commands '(erlang-electric-semicolon erlang-electric-newline))