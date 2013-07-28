(add-to-list 'gnus-secondary-select-methods
	     '(nnimap "gmail"
		      (nnimap-address "imap.gmail.com")
		      (nnimap-server-port 993)
		      (nnimap-stream ssl)
		      (nnimap-authinfo-file "~/.authinfo.gpg")))

(setq message-send-mail-function 'smtpmail-send-it
      smtpmail-starttls-credentials '(("smtp.gmail.com" 587 nil nil))
      smtpmail-auth-credentials '(("smtp.gmail.com" 587 "kyrylosilin@gmail.com" nil))
      smtpmail-default-smtp-server "smtp.gmail.com"
      smtpmail-smtp-server "smtp.gmail.com"
      smtpmail-smtp-service 587
      smtpmail-local-domain "thinkpad")
(setq smtpmail-auth-credentials "~/.authinfo.gpg")


(setq-default
 gnus-summary-line-format "%U%R%z %(%&user-date;  %-15,15f  %B%s%)\n"
 gnus-user-date-format-alist '((t . "%Y-%m-%d %H:%M"))
 gnus-summary-thread-gathering-function 'gnus-gather-threads-by-references
 gnus-sum-thread-tree-false-root ""
 gnus-sum-thread-tree-indent ""
 gnus-sum-thread-tree-leaf-with-other "-> "
 gnus-sum-thread-tree-root ""
 gnus-sum-thread-tree-single-leaf "|_ "
 gnus-sum-thread-tree-vertical "|")

(add-hook 'message-mode-hook
          '(lambda ()
             (flyspell-mode t)))
(add-hook 'gnus-group-mode-hook 'gnus-topic-mode)
(setq gnus-summary-thread-gathering-function
      'gnus-gather-threads-by-subject)
(setq gnus-thread-hide-subtree t)
(setq gnus-thread-ignore-subject t)

(setq user-full-name "Kyrylo Silin")
(setq user-mail-address "kyrylosilin@gmail.com")
(setq send-mail-function 'smtpmail-send-it)
