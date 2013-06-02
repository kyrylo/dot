(require 'cc-mode)

(setq-default c-default-style "linux"
              c-basic-offset 8
              tab-width 8
              indent-tabs-mode t)

(define-key c-mode-base-map (kbd "<backspace>") 'c-hungry-delete-backwards)
(define-key c-mode-base-map (kbd "RET") 'newline-and-indent)
