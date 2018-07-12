(use-package helm
  :ensure t
  :ensure helm-projectile
  :ensure helm-ag
  :ensure helm-descbinds
  :ensure helm-swoop
  :ensure helm-directory
  :config
  (global-set-key (kbd "M-x") 'helm-M-x)
  (global-set-key (kbd "C-x C-m") 'helm-M-x)
  (global-set-key (kbd "M-y") 'helm-show-kill-ring)
  (global-set-key (kbd "C-x b") 'helm-mini)
  ;; 显示正常的buffer列表
  ;; (global-set-key (kbd "C-x C-b") 'helm-buffers-list)
  (global-set-key (kbd "C-x C-f") 'helm-find-files)
  (global-set-key (kbd "C-h f") 'helm-apropos)
  (global-set-key (kbd "C-h r") 'helm-info-emacs)
  (global-set-key (kbd "C-h C-l") 'helm-locate-library)
  (global-set-key (kbd "C-c f") 'helm-recentf)
  (global-set-key (kbd "C-c h d a") 'helm-do-ag)
  (global-set-key (kbd "C-c h s i") 'helm-semantic-or-imenu)
  (global-set-key (kbd "C-c h i") 'helm-imenu)

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

  ;; helm-directory
  (define-key global-map (kbd "C-c h d") 'helm-directory)
  (setq helm-directory-basedir "~/")
  (setq helm-directory-basedir-list '("~/usr/local/" "~/etc/"))

  (setq projectile-completion-system 'helm)
  (helm-descbinds-mode)
  (helm-mode 1)
  (helm-projectile-on))


(provide 'iris-helm)
