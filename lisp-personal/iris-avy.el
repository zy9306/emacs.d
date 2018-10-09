(use-package avy
  :ensure t
  :config
  ;; "M-g c"原先绑定的命令是"goto-char"
  (global-unset-key (kbd "M-g c"))
  ;; 原avy-goto-char-timer
  (global-unset-key (kbd "C-;"))
  (global-set-key (kbd "M-g c") 'avy-goto-char)
  (global-set-key (kbd "M-g d") 'avy-goto-char-2)
  (global-set-key (kbd "M-g j") 'avy-goto-char-timer)
  (global-set-key (kbd "M-g f") 'avy-goto-line)
  (global-set-key (kbd "M-g w") 'avy-goto-word-1)
  (global-set-key (kbd "M-g e") 'avy-goto-word-0)
  )


(provide 'iris-avy)
