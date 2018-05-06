(require 'cc-mode)

(defun c-init()
  (semantic-mode 1)
  (flycheck-mode 1))

(setq-default c-default-style "linux"
              c-basic-offset 8
              tab-width 8
              indent-tabs-mode t)

(define-key c-mode-base-map (kbd "<backspace>") 'c-hungry-delete-backwards)
(define-key c-mode-base-map (kbd "RET") 'newline-and-indent)

(add-hook 'c-mode-hook 'c-init)
(define-key c-mode-base-map (kbd "M-[") 'semantic-ia-show-doc)
(define-key c-mode-base-map (kbd "M-]") 'semantic-ia-show-summary)

;; For C extensions...
(setq flycheck-clang-include-path (quote ("/opt/rubies/ruby-2.2.2/include/ruby-2.2.0")))
