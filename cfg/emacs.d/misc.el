(dolist (elem (directory-files (config-dir "misc")))
  (when (string-match-p "\\.el$" elem)
    (let ((filename (concat (config-dir "misc") elem)))
      (load-file filename))))
