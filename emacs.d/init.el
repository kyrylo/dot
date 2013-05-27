; Kyrylo Silin -->
;                 https://github.com/kyrylo/dot
;                                              <-- kyrylosilin@gmail.com
(setq config-root "~/.emacs.d")

(defun config-file (file)
  (concat (file-name-as-directory config-root) file))

(defun config-dir (file)
  (file-name-as-directory (config-file file)))

(add-to-list 'custom-theme-load-path (config-dir "themes"))

(load-file (config-file "gui.el"))
(load-file (config-file "look.el"))
(load-file (config-file "editing.el"))
(load-file (config-file "backup.el"))
(load-file (config-file "elpa.el"))
