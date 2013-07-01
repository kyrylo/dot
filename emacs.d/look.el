(setq inhibit-startup-message t
      initial-scratch-message nil)

(defun add-themes-to-load-path (dir)
  (when (and (file-exists-p dir)
             (file-directory-p dir))
    (dolist (elem (directory-files dir))
      (unless (or (equal "." elem) (equal ".." elem))
        (let ((filename (concat dir elem)))
          (if (file-directory-p filename)
            (add-to-list 'custom-theme-load-path filename)))))))

(add-themes-to-load-path (config-dir "themes"))
(load-theme 'solarized-dark t)

;(set-default-font "Monaco 8")
(global-linum-mode t)
(show-paren-mode t)
