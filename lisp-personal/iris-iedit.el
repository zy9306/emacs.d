(use-package iedit
  ;; https://github.com/victorhge/iedit/blob/master/iedit.el
  :ensure t
  :config
  ;; 原avy-goto-char-timer,不解绑每次启动会有警告
  (global-unset-key (kbd "C-;"))
  ;; (global-set-key (kbd "C-c ;") 'iedit-mode-toggle-on-function) todo
  )

(provide 'iris-iedit)
