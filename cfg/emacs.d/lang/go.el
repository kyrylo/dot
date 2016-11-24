(add-hook 'go-mode-hook
          (lambda()
            (setq gofmt-command "goimports")

            (add-hook 'before-save-hook 'gofmt-before-save)

            (add-to-list 'load-path "~/Code/gocode/src/github.com/dougm/goflymake")
            (flycheck-mode t)
            (require 'go-flycheck)

            (add-to-list 'load-path (concat (getenv "GOPATH")  "/src/github.com/golang/lint/misc/emacs"))
            (require 'golint)))
