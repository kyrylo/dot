(require 'flymake-jshint)

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'interpreter-mode-alist '("node" . js2-mode))

(add-hook 'js-mode-hook
          (lambda()
            (flymake-jshint-load)
            (flymake-mode 1)
            (setq js-indent-level 2
                  tab-width 8
                  indent-tabs-mode nil)))

(add-hook 'js2-mode-hook
          (lambda()
            (flymake-jshint-load)
            (flymake-mode 1)
            (setq js2-basic-offset 2
                  indent-tabs-mode nil)))
