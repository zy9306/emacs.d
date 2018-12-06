;; https://projectile.readthedocs.io/en/latest/
;; https://github.com/bbatsov/projectile

;;; code:

(use-package projectile
  :ensure t
  :config
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
  (projectile-mode +1)
  (setq projectile-project-search-path '("~/projects/"))
  (setq projectile-mode-line-prefix " proj"))


(provide 'iris-projectile)
