(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'interpreter-mode-alist '("node" . js2-mode))

(add-hook 'js-mode-hook
          (lambda()
            (flymake-jslint-load)
            (flymake-mode 1)
            (setq js-indent-level 1
                  tab-width 4
                  indent-tabs-mode t)))

(add-hook 'js2-mode-hook
          (lambda()
            (flymake-jslint-load)
            (flymake-mode 1)
            (setq indent-tabs-mode t
                  js2-basic-offset 4
                  tab-width 4
                  s2-bounce-indent-p t)
            (hs-minor-mode)
            (define-key js2-mode-map [(return)] 'newline-and-indent)
            (define-key js2-mode-map [(backspace)] 'c-hungry-delete-backwards)))
