(add-hook 'org-mode-hook (lambda ()
                           (iimage-mode t)
                           (setq org-hide-emphasis-markers t)
                           (setq org-src-fontify-natively t)))
