; Kyrylo Silin -->
;                 https://github.com/kyrylo/dot
;                                              <-- kyrylosilin@gmail.com
(tool-bar-mode -1)
(menu-bar-mode -1)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'zenburn t)
(set-default-font "Dejavu Sans Mono 8")
(global-linum-mode 1)
(scroll-bar-mode -1)
(add-to-list 'load-path "~/.emacs.d/")
(require 'autopair)
(autopair-global-mode)
(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(require 'whitespace)
(setq whitespace-style '(face empty tabs lines-tail trailing))
(global-whitespace-mode t)
(setq-default fill-column 80)
(cua-selection-mode t)
