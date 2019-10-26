;; backgroud color
(package-initialize)
(setq default-frame-alist
  '((background-color . "cornsilk")))
;; fullscreen
(setq initial-frame-alist (quote ((fullscreen . maximized))))
;;(set-background-color "honeydew")
;; Disable  message
(setq inhibit-startup-message t)
;; tool-bar
(tool-bar-mode -1)
;; scroll-bar
(scroll-bar-mode -1)
;; Seting cursor
(setq-default cursor-type 'bar)
;; disable backup files
(setq make-backup-files nil)
;; disable menu-bar
;;(menu-bar-mode -1)
;; fonts
(when (member "PingFang SC" (font-family-list))
  (set-face-attribute 'default nil :font "PingFang SC-16"))
;; hl line mode
;;(global-hl-line-mode 1)
;; linum mode
(global-linum-mode 1)
;; stop creating those #auto-save# files
(setq auto-save-default nil)
;; wrap long lines by word boundary, and arrow up/down move by visual line, etc
(global-visual-line-mode 1)

(provide 'init-basic)
