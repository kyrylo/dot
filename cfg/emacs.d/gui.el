(tool-bar-mode -1)
(menu-bar-mode -1)

;; Mac OS hack
(if window-system
  (scroll-bar-mode -1))
(column-number-mode t)
