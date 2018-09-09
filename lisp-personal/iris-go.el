(use-package go-mode
  :ensure t
  :ensure go-eldoc
  :ensure company-go
  :config
  (require 'company)
  (require 'company-go)
  (add-to-list 'auto-mode-alist '("\\.go\\'" . go-mode))
  (add-hook 'go-mode-hook 'go-eldoc-setup)
  (add-hook 'go-mode-hook (lambda ()
                            (set (make-local-variable 'company-backends) '(company-go))
                            (company-mode))))


(provide 'iris-go)
