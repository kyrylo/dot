(require 'flymake-jshint)

(add-hook 'js-mode-hook
          (lambda()
            (flymake-jshint-load)
            (flymake-mode 1)
            (setq js-indent-level 2
                  tab-width 8
                  indent-tabs-mode nil)))
