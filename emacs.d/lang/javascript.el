(require 'flymake-jshint)

(add-hook 'js-mode-hook
          (lambda()
            (flymake-jshint-load)
            (setq js-indent-level 4)
            (flymake-mode 1)))
