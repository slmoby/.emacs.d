(require 'package)
(setq package-enable-at-startup nil)

(setq package-archives '(("gnu" . "http://elpa.emacs-china.org")
			 ("melpa" . "http://elpa.emacs-china.org/melpa/")))
(package-initialize)

;; Bootstarp 'use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(provide 'init-packages)
