(use-package imenu-list
  ;; https://github.com/bmag/imenu-list
  :ensure t
  :config
  ;; (imenu-list-minor-mode)
  (global-set-key (kbd "C-'") #'imenu-list-smart-toggle)
  (setq imenu-list-focus-after-activation t)
  (setq imenu-list-after-jump-hook nil))


(provide 'iris-imenu-list)
