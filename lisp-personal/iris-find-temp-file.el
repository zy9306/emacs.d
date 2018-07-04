(use-package find-temp-file
  :ensure t
  :config
  ;; 快速打开临时文件
  ;; https://github.com/thisirs/find-temp-file
  (global-set-key (kbd "C-x t f") 'find-temp-file)
  (setq find-temp-file-directory "~/Nutstore/drafts")
  (setq find-temp-template-default "%N.%E"))

(provide 'iris-find-temp-file)
