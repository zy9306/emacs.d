(use-package neotree
  :ensure t
  :ensure all-the-icons
  :config
  ;;; neotree
  ;;; theme: classic(default) ascii arrow icons nerd
  ;;; For users who want to use the icons theme. Pls make sure you have installed the all-the-icons package and its fonts.
  ;;; neotree comes with default bindings of | for vertical split and - for horizontal split.在新缓冲区打开文件
  (global-set-key [f8] 'neotree-toggle)
  (setq neo-theme (if (display-graphic-p) 'ascii 'arrow))

  ;; 显示版本控制信息
  ;; (setq neo-vc-integration '(face char))
  (setq neo-vc-integration '(face))

  ;; Every time when the neotree window is opened, let it find current file and jump to node.
  (setq neo-smart-open t)

  ;;当执行 projectile-switch-project (C-c p p) 时，NeoTree 会自动改变根目录。
  ;;没有必要自动,可以用F9代替,如有需要,取消注释
  ;;(setq projectile-switch-project-action 'neotree-projectile-action)

  ;;如果使用 find-file-in-project (ffip), 你可以添加下面代码到 .emacs.d， 就可以随时切换根到项目目录：
  (defun neotree-ffip-project-dir ()
    "Open NeoTree using the git root."
    (interactive)
    (let ((project-dir (ffip-project-root))
          (file-name (buffer-file-name)))
      (if project-dir
          (progn
            (neotree-dir project-dir)
            (neotree-find file-name))
        (message "Could not find git project root."))))
  (global-set-key (kbd "C-c C-p") 'neotree-ffip-project-dir)

  ;;; Projectile
  ;;; Similar to find-file-in-project, NeoTree can be opened (toggled) at projectile project root as follows:
  (defun neotree-project-dir ()
    "Open NeoTree using the git root."
    (interactive)
    (let ((project-dir (projectile-project-root))
          (file-name (buffer-file-name)))
      ;; (neotree-toggle)
      (neotree-show)
      (if project-dir
          (if (neo-global--window-exists-p)
              (progn
                (neotree-dir project-dir)
                (neotree-find file-name)))
        (message "Could not find git project root."))))
  (global-set-key [f9] 'neotree-project-dir))

(provide 'iris-neotree)
;;; iris-neotree.el ends here
