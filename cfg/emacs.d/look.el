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
(load-theme 'zenburn t)

(set-default-font "Monaco 9")
(global-linum-mode t)
(show-paren-mode t)
(global-hl-line-mode t)

(setq default-frame-alist '((cursor-color . "WhiteSmoke")))
(scroll-bar-mode -1)
