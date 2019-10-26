(use-package company-ghci
	     :ensure t
	     :init
	     :config
	     )
(require 'company-ghci)
(push 'company-ghci company-backends)
(add-hook 'haskell-mode-hook 'company-mode)
;;; To get completions in the REPL
(add-hook 'haskell-interactive-mode-hook 'company-mode)

(provide 'init-haskell)
