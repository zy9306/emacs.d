(use-package helm
  :ensure t
  :ensure helm-ag
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
  (global-set-key (kbd "C-c h a") 'helm-do-ag)
  (global-set-key (kbd "C-c h s") 'helm-semantic-or-imenu)
  (global-set-key (kbd "C-c h i") 'helm-imenu)

  (substitute-key-definition 'find-tag 'helm-etags-select global-map)
  (define-key minibuffer-local-map (kbd "C-c C-l") 'helm-minibuffer-history)
  (define-key isearch-mode-map (kbd "C-o") 'helm-occur-from-isearch)

  ;; 只在当前buffer内打开helm
  (setq helm-split-window-inside-p t)

  (helm-mode 1))

(use-package helm-descbinds
  :ensure t
  :config
  (helm-descbinds-mode))

(use-package helm-projectile
  :ensure t
  :config
  (setq projectile-completion-system 'helm)
  (helm-projectile-on))

(use-package helm-directory
  :ensure t
  :config
  (define-key global-map (kbd "C-c h d") 'helm-directory)
  (setq helm-directory-basedir "~/")
  (setq helm-directory-basedir-list '("~/usr/local/" "~/etc/")))

(use-package swiper-helm
  :ensure t
  :config
  (global-set-key (kbd "C-s") 'swiper-helm))

(use-package helm-swoop
  ;; https://github.com/ShingoFukuyama/helm-swoop
  :ensure t
  :config
  (global-set-key (kbd "M-i") 'helm-swoop) ;; 该快捷键冲突,init-editing-utils.el line 111
  (global-set-key (kbd "M-I") 'helm-swoop-back-to-last-point)
  (global-set-key (kbd "C-c M-i") 'helm-multi-swoop)
  (global-set-key (kbd "C-x M-i") 'helm-multi-swoop-all)
  ;; Move up and down like isearch
  (define-key helm-swoop-map (kbd "C-r") 'helm-previous-line)
  (define-key helm-swoop-map (kbd "C-s") 'helm-next-line)
  (define-key helm-multi-swoop-map (kbd "C-r") 'helm-previous-line)
  (define-key helm-multi-swoop-map (kbd "C-s") 'helm-next-line)

  ;; If this value is t, split window inside the current window
  (setq helm-swoop-split-with-multiple-windows t)
  ;; Split direcion. 'split-window-vertically or 'split-window-horizontally
  (setq helm-swoop-split-direction 'split-window-vertically)
  ;; If nil, you can slightly boost invoke speed in exchange for text color
  (setq helm-swoop-speed-or-color nil)
  ;; Go to the opposite side of line from the end or beginning of line
  (setq helm-swoop-move-to-line-cycle t)
  ;; Optional face for line numbers
  ;; Face name is `helm-swoop-line-number-face`
  (setq helm-swoop-use-line-number-face t)
  ;; If you prefer fuzzy matching
  (setq helm-swoop-use-fuzzy-match nil))


(provide 'iris-helm)
