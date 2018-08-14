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

(add-to-list 'load-path "~/.emacs.d/lisp-personal")
(add-to-list 'load-path "~/.emacs.d/site-lisp")
(add-to-list 'load-path "~/.emacs.d/site-lisp/elpa-mirror")

;; 启动时最大化
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(global-set-key (kbd "C-x 5 s") 'select-frame-by-name)

;;; 也可以在启动之后运行 package-install-selected-packages
;;; 如果是暗色主题,选zenburn-theme或者material-theme的暗色
;;; 白色主题选leuven或material-theme,主题上不要做太多折腾了,没什么意义
;;; org-mode用material的,区分light和正常暗色,见底下org-mode设置
(require-package 'zenburn-theme)
(require-package 'material-theme)
(require-package 'spacemacs-theme)
(require-package 'spaceline)
(require-package 'use-package)
(require-package 'multiple-cursors)
(require-package 'paradox)

(require-package 'buffer-move)

(require-package 'all-the-icons)
;; (require-package 'neotree)

(require-package 'highlight-indentation)


;; https://github.com/TheBB/spaceline
(require 'spaceline-config)
(spaceline-emacs-theme)

;; https://stackoverflow.com/questions/18316665/how-to-improve-emacs-performance-when-view-large-file
;; 代码着色延迟，可明显改善卡顿情况(注释掉的原因，大文件依旧卡顿，文件太大直接局部关掉elpy吧,目前使用anaconda代替，待更优解)
;; (setq jit-lock-defer-time 0.05)


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

;; 依赖于xclip
;; sudo apt-get install xclip
(use-package xclip
  :ensure t
  :config
  (xclip-mode 1))


;; 设置projectile忽略的文件及文件夹
(use-package projectile
  :ensure t
  :config
  ;; 默认已忽略文件夹 (".idea" ".ensime_cache" ".eunit" ".git" ".hg" ".fslckout" "_FOSSIL_" ".bzr" "_darcs" ".tox" ".svn" ".stack-work")
  (setq projectile-globally-ignored-directories
        (append '() projectile-globally-ignored-directories))
  (setq projectile-globally-ignored-files
        (append '("*.pyc") projectile-globally-ignored-files)))

;; 更改自动备份文件位置及设置删除时间
(make-directory "~/.emacs.d/backup-files/" t)
(setq backup-directory-alist
      `((".*" . "~/.emacs.d/backup-files/")))
(setq auto-save-file-name-transforms
      `((".*" "~/.emacs.d/backup-files/" t)))
(message "Deleting old backup files...")
(let ((week (* 60 60 24 7))
      (current (float-time (current-time))))
  (dolist (file (directory-files "~/.emacs.d/backup-files/" t))
    (when (and (backup-file-name-p file)
               (> (- current (float-time (fifth (file-attributes file))))
                  week))
      (message "%s" file)
      (delete-file file))))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(beacon-color "#d54e53")
 '(company-idle-delay 0.05)
 '(company-minimum-prefix-length 2)
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(company-tooltip-idle-delay 0.05)
 '(custom-enabled-themes (quote (leuven)))
 '(custom-safe-themes
   (quote
    ("a24c5b3c12d147da6cef80938dca1223b7c7f70f2f382b26308eba014dc4833a" "732b807b0543855541743429c9979ebfb363e27ec91e82f463c91e68c772f6e3" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "190a9882bef28d7e944aa610aa68fe1ee34ecea6127239178c7ac848754992df" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "4d8578f86c9de7531ba8519edd0a1f6be090a6ef1e093feabfd5263e454882fb" "83e7d353e2c2c4dde0de89dc824b51fa56b1bc2241da78de06eb641b84bb629f" "4b2b038b98383459c1cf99ee7129769017d5da44959bf1efe3ce34208a353bb7" "ddac41e96a403e46ad595499148b12512610927a77f8810e74e8ce8205cf4e01" "241ddb7865c44fc66e7f862ff4210e8497c994f0003f698861ffcee01ee77e68" "8a8d606a19d903bbf54c2cae04b8c590fbee05b58b1f3d64f749d57a8d995173" "8e6abd8c511032be7af6223f06bf3d06d5e7b63c0ffb946e8a0d1656dd3944c8" "62f8ada330231b1bc36f5fb902bea1d6aa024c4ab1817b021aa62824629026b6" "3ba8e07ef9e4b1154fb0d8266b1093313e2c72e471e2ef85db6cb90754d093c3" "9ed36b35eb2f1eed0f992a0ab1150859d38fce9facfe0dfeb5bf0cf578d8e24f" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "3b5ce826b9c9f455b7c4c8bff22c020779383a12f2f57bf2eb25139244bb7290" "2cfc1cab46c0f5bae8017d3603ea1197be4f4fff8b9750d026d19f0b9e606fae" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" default)))
 '(elpy-rpc-ignored-buffer-size 2097152)
 '(fci-rule-color "#d6d6d6")
 '(flycheck-color-mode-line-face-to-color (quote mode-line-buffer-id))
 '(frame-background-mode (quote dark))
 '(hl-sexp-background-color "#1c1f26")
 '(nrepl-message-colors
   (quote
    ("#183691" "#969896" "#a71d5d" "#969896" "#0086b3" "#795da3" "#a71d5d" "#969896")))
 '(package-selected-packages
   (quote
    (dockerfile-mode treemacs-projectile treemacs pyvenv highlight-indentation material-theme zenburn-theme helm-directory paradox imenu-list company-anaconda anaconda-mode find-temp-file spacemacs-theme helm-swoop helm-descbinds helm-ag helm-projectile helm spaceline counsel-projectile buffer-move auto-virtualenv elpy use-package nlinum beacon mode-line-bell vlf list-unicode-display unfill mmm-mode default-text-scale session switch-window company-quickhelp company ivy-xref projectile counsel ivy-historian ivy smex flycheck-color-mode-line flycheck ibuffer-vc anzu diff-hl diredfl disable-mouse dimmer command-log-mode scratch diminish wgrep exec-path-from-shell fullframe)))
 '(paradox-github-token t)
 '(pdf-view-midnight-colors (quote ("#969896" . "#f8eec7")))
 '(session-use-package t nil (session))
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#c82829")
     (40 . "#f5871f")
     (60 . "#eab700")
     (80 . "#718c00")
     (100 . "#3e999f")
     (120 . "#4271ae")
     (140 . "#8959a8")
     (160 . "#c82829")
     (180 . "#f5871f")
     (200 . "#eab700")
     (220 . "#718c00")
     (240 . "#3e999f")
     (260 . "#4271ae")
     (280 . "#8959a8")
     (300 . "#c82829")
     (320 . "#f5871f")
     (340 . "#eab700")
     (360 . "#718c00"))))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(flycheck-error ((t (:underline "#B71C1C"))))
 '(flycheck-info ((t (:underline "#2196f3"))))
 '(flycheck-warning ((t (:underline "#FF5722"))))
 '(imenu-list-entry-face-0 ((t (:inherit imenu-list-entry-face :foreground "firebrick"))))
 '(imenu-list-entry-face-1 ((t (:inherit imenu-list-entry-face :foreground "slate blue"))))
 '(imenu-list-entry-face-2 ((t (:inherit imenu-list-entry-face :foreground "dark cyan"))))
 '(region ((t (:background "light coral" :foreground "#FFFFFF"))))
 '(spaceline-highlight-face ((t (:background "salmon" :foreground "#3E3D31" :inherit (quote mode-line))))))





;; linum-mode会有性能问题，卡顿，使用nlinum-mode代替
;; 默认不显示行号了，如有需要，手动开启，使用nlinum-mode
;; (if (eq system-type 'windows-nt)
;;     (message "windows下linum-mode和中英文字体都设置成文泉驿会有冲突的bug,不启用nlinum-mode")
;;   (global-nlinum-mode 1))
;; 若不出现显示问题，无需手动调整
(setq-default tab-width 4)




;; multiple-cursors
;; https://github.com/magnars/multiple-cursors.el/tree/75dd6bf83af4eff83dc22e278c47264c1a41cd66
;; 有些命令不可用可以查看.emacs.d/.mc-lists.el

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


(use-package iris-edit)
;;(use-package iris-helm)
(use-package iris-ivy)
;; elpy在代码折叠时非常卡,使用anaconda代替
;;(use-package iris-python)
(use-package iris-python-anaconda-mode)
;; treemacs替代
;; (use-package iris-neotree)
(use-package iris-avy)
;;(use-package iris-theme) ;; 只有在用spacemacs-theme时才用这个,用其它主题的话不需要了
(use-package iris-find-temp-file)
;; pull request解决python二级折叠问题
;; https://github.com/gregsexton/origami.el/pull/64/files
(use-package origami-parsers)
(use-package iris-imenu-list)
(use-package iris-elpa-mirror)

(use-package iris-treemacs)
(use-package iris-dockerfile-mode)

;; bhj-fonts在终端下会报错
(if (display-graphic-p)
    (use-package bhj-fonts)
  (use-package iris-font))

;; org-theme
;; 1.浅色主题下使用
(use-package iris-material-org-theme-light)
;; 2.深色主题下使用
;;(use-package iris-material-org-theme-dark)


;; 光标为横线
;; (set-default 'cursor-type 'hbar)

;; 如果值为1,display "lambda" as "λ"
;; 另外python中and or等都会显示成符号,关闭
;; 不知为何,不生效
;; (global-prettify-symbols-mode 0)

;; 终端下也可以显示文件修改信息
;; 在gui下也这样设置,diff-hl-margin-mode显示得更加清楚,但是会在左侧增加一个边距
;; 后期如果启用其它主题,显示本来就很清楚的话,就把gui下的diff-hl-margin-mode改为nil
(if (display-graphic-p)
    (diff-hl-margin-mode 1)
  (diff-hl-margin-mode 1))
