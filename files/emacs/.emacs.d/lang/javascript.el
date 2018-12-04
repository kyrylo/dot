;; (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
;; (add-to-list 'interpreter-mode-alist '("node" . js2-mode))

(add-hook 'js-mode-hook
          (lambda()
            ;; (flymake-jslint-load)
            ;; (flymake-mode 1)
            (setq js-indent-level 2
                  tab-width 2
                  indent-tabs-mode nil)))

;; (add-hook 'js2-mode-hook
;;           (lambda()
;;             (flycheck-mode 1)
;;             (setq indent-tabs-mode nil
;;                   js2-basic-offset 2
;;                   tab-width 2
;;                   s2-bounce-indent-p t)
;;             (hs-minor-mode)
;;             (define-key js2-mode-map [(return)] 'newline-and-indent)
;;             (define-key js2-mode-map [(backspace)] 'c-hungry-delete-backwards)))
