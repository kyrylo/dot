(setq config-root "~/.emacs.d")

(defun config-file (file)
  (concat (file-name-as-directory config-root) file))

(defun config-dir (file)
  (file-name-as-directory (config-file file)))

(package-initialize)

;;
;; GUI
;;

;; No welcome panes.
(setq inhibit-startup-message t
      initial-scratch-message nil)

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(column-number-mode t)
(global-linum-mode t)

(load-theme 'zenburn t)
(set-default-font "PragmataPro for Powerline-12")
(set-fringe-mode '(1 . 0))
(set-face-attribute 'vertical-border nil :foreground "#3f3f3f")

;; Speedbar.
(add-to-list 'default-frame-alist '(font . "PragmataPro for Powerline-12"))
(setq speedbar-directory-unshown-regexp "^\\(\\.\\.*$\\)\\'"
      speedbar-show-unknown-files t)
(global-set-key (kbd "C-x p") 'speedbar-get-focus)

;;
;; EDITING
;;

;; Rectangular regions.
(cua-selection-mode t)

(show-paren-mode t)
(global-hl-line-mode t)

;; Highlight blank lines with red, long lines with pink.
(setq whitespace-line-column 80)
(setq whitespace-style '(face trailing lines-tail))
(global-whitespace-mode t)

(electric-pair-mode)

;; (require 'auto-complete-config)
;; (add-to-list 'ac-dictionary-directories "~/.emacs.d/dict")
;; (ac-config-default)
;; (ac-flyspell-workaround)
;; (global-auto-complete-mode t)

(setq require-final-newline t)
(setq-default line-spacing 1)

(global-auto-revert-mode t)
;; (setq auto-revert-check-vc-info t)

(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(setq smerge-command-prefix "\C-cv")
(setq-default fill-column 80)

;; Allow copy-pasting when Emacs is in terminal mode.
(setq select-enable-clipboard t)

;; Don't ever load change-log-mode since it gets in the way of markdown-mode.
(rassq-delete-all 'change-log-mode auto-mode-alist)

;;
;; BACKUP
;;

(setq
   backup-by-copying t
   backup-directory-alist `((".*" . "~/.emacsaves"))
   auto-save-file-name-transforms `((".*", "~/.emacsaves"))
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 2
   version-control t)

;;
;; ELPA
;;

(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("marmalade" . "http://marmalade-repo.org/packages/")
        ("melpa" . "http://melpa.milkbox.net/packages/")))

;;
;; LANG
;;

(dolist (elem (directory-files (config-dir "lang")))
  (when (string-match-p "\\.el$" elem)
    (let ((filename (concat (config-dir "lang") elem)))
      (load-file filename))))

;; RUBY

(setq ruby-insert-encoding-magic-comment nil)
(add-hook 'after-init-hook 'inf-ruby-switch-setup)
(add-hook 'ruby-mode-hook
          (lambda()
            (electric-indent-mode 1)
            (ruby-end-mode 1)
            (ruby-tools-mode 1)
            (local-set-key (kbd "RET") 'newline-and-indent)))

;; WEB MODE

(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-hook 'web-mode-hook
          (lambda()
            (setq web-mode-markup-indent-offset 2)))

;; RUST

(add-hook 'rust-mode-hook
          (lambda()
            (setq rust-format-on-save t)))

;;
;; CSS
;;

(setq css-indent-offset 2)

;;
;; JavaScript
;;
(defun prettier-js-defaults-hook ()
  (setq prettier-js-args '(
                           "--no-semi"
                           "--single-quote"
                           "--trailing-comma" "es5"
                           "--arrow-parens" "always")))

(add-hook 'js-mode-hook 'prettier-js-mode)
(add-hook 'js-mode-hook 'prettier-js-defaults-hook)

(add-hook 'vue-mode-hook 'prettier-js-mode)
(add-hook 'vue-mode-hook 'prettier-js-defaults-hook)

;;
;; MISC
;;

(setq vc-follow-symlinks 1)

(global-set-key (kbd "C-.")
                (lambda ()
                  (interactive)
                  (save-excursion (mark-whole-buffer)
                  (indent-region (region-beginning) (region-end)))))
