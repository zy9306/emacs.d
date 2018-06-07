;;; 前置条件
;;; 1.系统需安装ag,否则M-?(查找引用), M-s /(swipper搜索）等命令无法工作，搜索相关的在init-ivy.el文件中，可以好好看看
;;;   https://github.com/ggreer/the_silver_searcher
;;;   sudo apt-get install silversearcher-ag
;;;   C-c p s s使用ag搜索，C-c p s g使用grep搜索，ag效率比grep高很多
;;;   projectile文档 https://projectile.readthedocs.io/en/latest/usage/
;;;   ag.el文档 http://agel.readthedocs.io/en/latest/installation.html
;;;   todo: 如何以正则进行搜索？

;;; 如果不想出错的时候弹出一个buffer调试信息，可以设置 toggle-debug-on-error
;;; 这样就只会在minibuffer提示message,建议不要全局开启，只在需要的时候手动切换


(defvar emacs-dir (file-name-directory load-file-name)
  "The root dir of the .emacs.d")
(defvar personal-lisp-dir (expand-file-name "lisp-personal" emacs-dir))
(add-to-list 'load-path personal-lisp-dir)


;;; 也可以在启动之后运行 package-install-selected-packages
(require-package 'color-theme-sanityinc-tomorrow)
(require-package 'color-theme-sanityinc-solarized)
(require-package 'spaceline)
(require-package 'use-package)
(require-package 'multiple-cursors)

(require-package 'buffer-move)

(require-package 'all-the-icons)
(require-package 'neotree)


;; https://github.com/TheBB/spaceline
(require 'spaceline-config)
(spaceline-emacs-theme)

;; https://stackoverflow.com/questions/18316665/how-to-improve-emacs-performance-when-view-large-file
;; 代码着色延迟，可明显改善卡顿情况
(setq jit-lock-defer-time 0.05)


;; https://github.com/ericdanan/counsel-projectile/tree/a95ef966aeeaa6ab0b90fe8d29c31f6d92f99fb6#installation
;; Ivy UI for Projectile，未装此包前就已经可以了，
;; 目前来看唯一的作用只是C-c p s g的时候结果显示在minibuffer中，但是这样也有缺点，默认是不启用的，想启用该功能
;; 可以打开 counsel-projectile-mode ，其它功能待探索，若没有必要可以删除此包
(require-package 'counsel-projectile)



;; 使用use-package
;; This is only needed once, near the top of the file
(eval-when-compile
  ;; Following line is not needed if use-package.el is in ~/.emacs.d
  ;; (add-to-list 'load-path "<path where use-package is installed>")
  (require 'use-package))
(use-package unicad)



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(beacon-color "#d54e53")
 '(company-idle-delay 0.05)
 '(company-minimum-prefix-length 2)
 '(company-tooltip-idle-delay 0.05)
 '(custom-enabled-themes (quote (sanityinc-tomorrow-day)))
 '(custom-safe-themes
   (quote
    ("bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "3b5ce826b9c9f455b7c4c8bff22c020779383a12f2f57bf2eb25139244bb7290" "2cfc1cab46c0f5bae8017d3603ea1197be4f4fff8b9750d026d19f0b9e606fae" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" default)))
 '(elpy-rpc-ignored-buffer-size 2097152)
 '(flycheck-color-mode-line-face-to-color (quote mode-line-buffer-id))
 '(frame-background-mode (quote dark))
 '(nrepl-message-colors
   (quote
    ("#183691" "#969896" "#a71d5d" "#969896" "#0086b3" "#795da3" "#a71d5d" "#969896")))
 '(package-selected-packages
   (quote
    (helm-swoop helm-descbinds helm-ag helm-projectile helm spaceline counsel-projectile buffer-move auto-virtualenv elpy use-package nlinum beacon mode-line-bell vlf list-unicode-display unfill mmm-mode default-text-scale session switch-window company-quickhelp company ivy-xref projectile counsel ivy-historian ivy smex flycheck-color-mode-line flycheck ibuffer-vc anzu diff-hl diredfl disable-mouse dimmer color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized command-log-mode scratch diminish wgrep exec-path-from-shell fullframe)))
 '(pdf-view-midnight-colors (quote ("#969896" . "#f8eec7")))
 '(session-use-package t nil (session)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )






;; linum-mode会有性能问题，卡顿，使用nlinum-mode代替
;; 默认不显示行号了，如有需要，手动开启，使用nlinum-mode
;; (if (eq system-type 'windows-nt)
;;     (message "windows下linum-mode和中英文字体都设置成文泉驿会有冲突的bug,不启用nlinum-mode")
;;   (global-nlinum-mode 1))
;; 若不出现显示问题，无需手动调整
(setq-default tab-width 4)




;; multiple-cursors
;; https://github.com/magnars/multiple-cursors.el/tree/75dd6bf83af4eff83dc22e278c47264c1a41cd66

(require 'multiple-cursors)
(global-set-key (kbd "C-c m c") 'mc/edit-lines)
(global-set-key (kbd "C-c m e") 'mc/edit-ends-of-lines)
(global-set-key (kbd "C-c m a") 'mc/edit-beginnings-of-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
(global-unset-key (kbd "M-<down-mouse-1>"))
(global-set-key (kbd "M-<mouse-1>") 'mc/add-cursor-on-click)







;; org-mode
;; 代码语法高亮
(setq org-src-fontify-natively t)
;; 始终启用缩进
(add-hook 'org-mode-hook 'org-indent-mode)


(setq org-agenda-files (file-expand-wildcards "~/Nutstore/org/*.org"))

;; 时间日期相关的key
;; 本来org-time-stamp-inactive默认为C-c !
;; 但是C-c !被fly-check的prefix给占了
;; 要插入包含当前时间的，加C-u即可,如C-u C-c .和C-u C-c t
(global-set-key (kbd "C-c .")  'org-time-stamp)
(global-set-key (kbd "C-c t")  'org-time-stamp-inactive)



;;; 改变buffer位置，比如将buffer移到左边或右边
;;; https://github.com/lukhas/buffer-move/tree/cb517ecf8409b5fdcda472d7190c6021f0c49751
(require 'buffer-move)
(global-set-key (kbd "<C-S-up>")     'buf-move-up)
(global-set-key (kbd "<C-S-down>")   'buf-move-down)
(global-set-key (kbd "<C-S-left>")   'buf-move-left)
(global-set-key (kbd "<C-S-right>")  'buf-move-right)
;; (setq buffer-move-behavior 'move)  不交换缓冲区内容






;;;all-the-icons
(require 'all-the-icons)


;;; neotree
;;; theme: classic(default) ascii arrow icons nerd
;;; For users who want to use the icons theme. Pls make sure you have installed the all-the-icons package and its fonts.
;;; neotree comes with default bindings of | for vertical split and - for horizontal split.在新缓冲区打开文件
(global-set-key [f8] 'neotree-toggle)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))

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
    (neotree-toggle)
    (if project-dir
        (if (neo-global--window-exists-p)
            (progn
              (neotree-dir project-dir)
              (neotree-find file-name)))
      (message "Could not find git project root."))))
(global-set-key [f9] 'neotree-project-dir)





(use-package iris-edit)
(use-package iris-helm)
(use-package iris-python)
(use-package iris-font)
