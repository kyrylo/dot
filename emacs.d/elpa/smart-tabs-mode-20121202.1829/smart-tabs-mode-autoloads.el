;;; smart-tabs-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (smart-tabs-insinuate smart-tabs-advice smart-tabs-mode-enable
;;;;;;  smart-tabs-mode) "smart-tabs-mode" "smart-tabs-mode.el" (20900
;;;;;;  29123 772270 237000))
;;; Generated autoloads from smart-tabs-mode.el

(autoload 'smart-tabs-mode "smart-tabs-mode" "\
Intelligently indent with tabs, align with spaces!

\(fn &optional ARG)" t nil)

(autoload 'smart-tabs-mode-enable "smart-tabs-mode" "\
Enable smart-tabs-mode.

\(fn)" nil nil)

(autoload 'smart-tabs-advice "smart-tabs-mode" "\


\(fn FUNCTION OFFSET)" nil t)

(autoload 'smart-tabs-insinuate "smart-tabs-mode" "\
Enable smart-tabs-mode for LANGUAGES.
LANGUAGES is a list of SYMBOL or NAME as defined in
'smart-tabs-insinuate-alist' alist or a language using standard named
indent function and indent level.

\(fn &rest LANGUAGES)" nil nil)

;;;***

;;;### (autoloads nil nil ("smart-tabs-mode-pkg.el") (20900 29123
;;;;;;  939206 478000))

;;;***

(provide 'smart-tabs-mode-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; smart-tabs-mode-autoloads.el ends here
