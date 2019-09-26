;; Author  Chris
;;(Setq inhibit-startup-message t)

;; tool-bar
(tool-bar-mode -1)
;; Init message
(setq inhibit-startup-message t)
;; Pakcages


(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))


(use-package try
  :ensure t)

;; which-key
(use-package which-key
  :ensure t
  :config (which-key-mode))


;; Org-mode
(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))


(setq indo-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;;(defalias 'list-buffers 'ibuffer)
;; (defalias 'list-buffers 'ibuffer-other-windows)



;; This is tabbar mode is you like this you can 
;;(use-package tabbar
;;  :ensure t
;;  :config
;;  (tabbar-mod 1))









(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (org-bullets use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
