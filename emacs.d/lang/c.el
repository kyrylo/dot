(setq-default c-default-style "linux"
              c-basic-offset 8
              tab-width 8
              indent-tabs-mode t)
(add-hook 'c-mode-common-hook '(lambda ()
                                 (c-toggle-auto-state 1)
                                 (c-toggle-auto-hungry-state 1)))
