;; Author:Chris
;; email: chaos@slmoby.top
;; repos: https://github.com/slmoby/.emacs.d

;; Packages
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (auto-complete counsel swiper ace-window org-bullets use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))


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


;; Switch Windows Packages
(use-package ace-window
  :ensure t
  :init
  (progn
    (global-set-key [remap other-window] 'ace-window)
    (custom-set-faces
     '(aw-leading-char-face
       ((t (:inherit ace-jump-face-foreground :height 3.0)))))
   ))





;;(lorem-ipsum-use-default-bindings)
;; This will setup the folling keybindings:
;; C-c l p: lorem-ipsum-insert-paragraphs
;; C-c l s: lorem-ipsum-insert-sentences
;; C-c l l: lorem-ipsum-insert-list
;;If you want a different keybinding, say you want the prefix C-c C-l, use a variation of the
;; following:
;; (global-set-key (kbd "C-c C-l s") 'lorem-ipsum-insert-sentences)
;; (global-set-key (kbd "C-c C-l p") 'lorem-ipsum-insert-paragraphs)
;; (global-set-key (kbd "C-c C-l l") 'lorem-ipsum-insert-list)

;; use consel

(use-package counsel
  :ensure t
  )


(use-package ivy
  :ensure t
  :diminish (ivy-mode)
  :bind (("C-x b" . ivy-switch-buffer))
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t)
  (setq ivy-display-style 'fancy))

(use-package swiper
  :ensure try
  :bind (("C-s" . swiper)
	 ("C-r" . swiper)
	 ("C-c C-r" . ivy-resume)
	 ("M-x" . counsel-M-x)
	 ("C-x C-f" . counsel-find-file)
	 )
  :config
  (progn
    (ivy-mode 1)
    (setq ivy-use-virtual-buffers t)
    (setq ivy-display-style 'fancy)
    (define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)
    ))


(use-package avy
  :ensure t
  :bind ("M-s" . avy-goto-char))


;; complete mode
(use-package auto-complete
  :ensure t
  :init
  (progn
    (ac-config-default)
    (global-auto-complete-mode t)
    ))
