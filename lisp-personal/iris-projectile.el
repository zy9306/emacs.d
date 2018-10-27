;; https://projectile.readthedocs.io/en/latest/
;; https://github.com/bbatsov/projectile

(use-package projectile
  :ensure t
  :config
  (define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
  (projectile-mode +1)

  (setq projectile-project-search-path '("~/projects/"))
  (setq-default
   projectile-mode-line
   '(:eval
     (if (file-remote-p default-directory)
         " Proj"
       (format " Proj[%s]" (projectile-project-name))))))


(provide 'iris-projectile)
