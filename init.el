;; Author:Chris
;; email: chaos@slmoby.top
;; repositories: https://github.com/slmoby/.emacs.d

;;(setq debug-on-error t)
;;(setq init-file-debug t)

(require 'package)
(setq package-enable-at-startup nil)

(setq package-archives '(("gnu" . "http://elpa.emacs-china.org")
			 ("melpa" . "http://elpa.emacs-china.org/melpa/")))
(package-initialize)

;; Bootstarp 'use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(org-babel-load-file (expand-file-name  "~/.emacs.d/settings.org"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files nil)
 '(package-selected-packages
   (quote
    (pdf-view-restore org-pdfview doom-modeline doom doom-themes eshell-autojump telega pyim-basedict pyim auctex-latexmk try auto-complete counsel swiper ace-window org-bullets use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))
