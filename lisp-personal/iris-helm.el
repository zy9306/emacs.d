(use-package helm
  :ensure t
  :ensure helm-projectile
  :ensure helm-ag
  :ensure helm-descbinds
  :ensure helm-swoop
  :config
  (global-set-key (kbd "M-x") 'helm-M-x)
  (global-set-key (kbd "C-x C-m") 'helm-M-x)
  (global-set-key (kbd "M-y") 'helm-show-kill-ring)
  (global-set-key (kbd "C-x b") 'helm-mini)
  (global-set-key (kbd "C-x C-b") 'helm-buffers-list)
  (global-set-key (kbd "C-x C-f") 'helm-find-files)
  (global-set-key (kbd "C-h f") 'helm-apropos)
  (global-set-key (kbd "C-h r") 'helm-info-emacs)
  (global-set-key (kbd "C-h C-l") 'helm-locate-library)
  (global-set-key (kbd "C-c f") 'helm-recentf)

  (substitute-key-definition 'find-tag 'helm-etags-select global-map)
  (define-key minibuffer-local-map (kbd "C-c C-l") 'helm-minibuffer-history)
  (define-key isearch-mode-map (kbd "C-o") 'helm-occur-from-isearch)

  ;; ;; shell history.
  ;; (define-key shell-mode-map (kbd "C-c C-l") 'helm-comint-input-ring)
  ;; ;; use helm to list eshell history
  ;; (add-hook 'eshell-mode-hook
  ;;           #'(lambda ()
  ;;               (substitute-key-definition 'eshell-list-history 'helm-eshell-history eshell-mode-map)))


  (global-set-key (kbd "M-i") 'helm-swoop)
  (global-set-key (kbd "M-I") 'helm-swoop-back-to-last-point)
  (global-set-key (kbd "C-c M-i") 'helm-multi-swoop)
  (global-set-key (kbd "C-x M-i") 'helm-multi-swoop-all)

  (setq projectile-completion-system 'helm)
  (helm-descbinds-mode)
  (helm-mode 1)
  (helm-projectile-on))


(provide 'iris-helm)
