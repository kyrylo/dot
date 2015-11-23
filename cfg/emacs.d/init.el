(setq config-root "~/.emacs.d")

(defun config-file (file)
  (concat (file-name-as-directory config-root) file))

(defun vendor-file (file)
  (concat (file-name-as-directory
           (concat (file-name-as-directory config-root) "vendor")) file))

(defun config-dir (file)
  (file-name-as-directory (config-file file)))

(package-initialize)
(load-file (config-file "gui.el"))
(load-file (config-file "editing.el"))
(load-file (config-file "backup.el"))
(load-file (config-file "elpa.el"))
(load-file (config-file "lang.el"))
(load-file (config-file "misc.el"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-basic-offset 4)
 '(indent-tabs-mode nil)
 '(js-indent-level 2)
 '(lua-indent-level 2)
 '(speedbar-show-unknown-files t)
 '(tab-width 4)
 '(web-mode-attr-indent-offset 2)
 '(web-mode-block-padding 0)
 '(web-mode-code-indent-offset 2)
 '(web-mode-css-indent-offset 2)
 '(web-mode-enable-auto-indentation nil)
 '(web-mode-markup-indent-offset 2)
 '(web-mode-style-padding 0))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
