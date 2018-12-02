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
;; (add-to-list 'default-frame-alist '(fullscreen . maximized))
;; (global-set-key (kbd "C-x 5 s") 'select-frame-by-name)

;;; 也可以在启动之后运行 package-install-selected-packages
;;; 如果是暗色主题,选zenburn-theme或者material-theme的暗色
;;; 白色主题选leuven或material-theme,主题上不要做太多折腾了,没什么意义
;;; org-mode用material的,区分light和正常暗色,见底下org-mode设置
(require-package 'github-theme)
(require-package 'zenburn-theme)
(require-package 'material-theme)
(require-package 'spacemacs-theme)
(require-package 'moe-theme)  ;; https://github.com/kuanyui/moe-theme.el
(require-package 'spaceline)
(require-package 'use-package)
(require-package 'multiple-cursors)
(require-package 'paradox)

(require-package 'buffer-move)

(require-package 'all-the-icons)
;; (require-package 'neotree)

(require-package 'highlight-indentation)


;; https://github.com/TheBB/spaceline
;; (require 'spaceline-config)
;; (spaceline-emacs-theme)

;; https://stackoverflow.com/questions/18316665/how-to-improve-emacs-performance-when-view-large-file
;; 代码着色延迟，可明显改善卡顿情况(注释掉的原因，大文件依旧卡顿，文件太大直接局部关掉elpy吧,目前使用anaconda代替，待更优解)
;; (setq jit-lock-defer-time 0.05)



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

(use-package nov
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.epub\\'" . nov-mode)))

;; 和helm的C-j冲突,暂时禁用
;; (use-package real-auto-save
;;   :ensure t
;;   :config
;;   (add-hook 'prog-mode-hook 'real-auto-save-mode)
;;   (add-hook 'text-mode-hook 'real-auto-save-mode)
;;   (setq real-auto-save-interval 1))


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

;; 下划线为单词的一部分
(modify-syntax-entry ?_ "w")
;; (add-hook 'c-mode-common-hook #'(lambda () (modify-syntax-entry ?_ "w")))

;; 不删除固定的window,对treemacs以及其它固定的buffer起作用
(add-hook 'window-configuration-change-hook
          (lambda ()
            (dolist (w (window-list))
              (if (window-dedicated-p w)
                  (set-window-parameter w 'no-delete-other-windows t)))))

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
 '(custom-enabled-themes (quote (github)))
 '(custom-safe-themes
   (quote
    ("5057614f7e14de98bbc02200e2fe827ad897696bfd222d1bcab42ad8ff313e20" "0daf22a3438a9c0998c777a771f23435c12a1d8844969a28f75820dd71ff64e1" "13d20048c12826c7ea636fbe513d6f24c0d43709a761052adbca052708798ce3" "e61752b5a3af12be08e99d076aedadd76052137560b7e684a8be2f8d2958edc3" "a24c5b3c12d147da6cef80938dca1223b7c7f70f2f382b26308eba014dc4833a" "732b807b0543855541743429c9979ebfb363e27ec91e82f463c91e68c772f6e3" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "190a9882bef28d7e944aa610aa68fe1ee34ecea6127239178c7ac848754992df" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "4d8578f86c9de7531ba8519edd0a1f6be090a6ef1e093feabfd5263e454882fb" "83e7d353e2c2c4dde0de89dc824b51fa56b1bc2241da78de06eb641b84bb629f" "4b2b038b98383459c1cf99ee7129769017d5da44959bf1efe3ce34208a353bb7" "ddac41e96a403e46ad595499148b12512610927a77f8810e74e8ce8205cf4e01" "241ddb7865c44fc66e7f862ff4210e8497c994f0003f698861ffcee01ee77e68" "8a8d606a19d903bbf54c2cae04b8c590fbee05b58b1f3d64f749d57a8d995173" "8e6abd8c511032be7af6223f06bf3d06d5e7b63c0ffb946e8a0d1656dd3944c8" "62f8ada330231b1bc36f5fb902bea1d6aa024c4ab1817b021aa62824629026b6" "3ba8e07ef9e4b1154fb0d8266b1093313e2c72e471e2ef85db6cb90754d093c3" "9ed36b35eb2f1eed0f992a0ab1150859d38fce9facfe0dfeb5bf0cf578d8e24f" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "3b5ce826b9c9f455b7c4c8bff22c020779383a12f2f57bf2eb25139244bb7290" "2cfc1cab46c0f5bae8017d3603ea1197be4f4fff8b9750d026d19f0b9e606fae" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" default)))
 '(elpy-rpc-ignored-buffer-size 2097152)
 '(fci-rule-color "#d6d6d6")
 '(flycheck-color-mode-line-face-to-color (quote mode-line-buffer-id))
 '(frame-background-mode (quote dark))
 '(hl-sexp-background-color "#1c1f26")
 '(nrepl-message-colors
   (quote
    ("#183691" "#969896" "#a71d5d" "#969896" "#0086b3" "#795da3" "#a71d5d" "#969896")))
 '(org-bullets-bullet-list (quote ("✿" "✸" "◉" "○")))
 '(org-hide-emphasis-markers nil)
 '(org-hide-leading-stars nil)
 '(org-indent-mode-turns-on-hiding-stars nil)
 '(package-selected-packages
   (quote
    (highlight-indentation all-the-icons buffer-move paradox use-package spaceline moe-theme spacemacs-theme material-theme zenburn-theme github-theme uptimes dotenv-mode daemons dsvn htmlize lua-mode gnuplot flycheck-ledger ledger-mode origami regex-tool cask-mode flycheck-package highlight-quoted macrostep cl-lib-highlight aggressive-indent immortal-scratch auto-compile ipretty elisp-slime-nav paredit-everywhere paredit nginx-mode company-terraform terraform-mode docker-compose-mode dockerfile-mode docker yaml-mode restclient httprepl css-eldoc skewer-less sass-mode rainbow-mode tagedit org-pomodoro writeroom-mode org-cliplink add-node-modules-path skewer-mode js-comint xref-js2 prettier-js typescript-mode coffee-mode js2-mode json-mode csv-mode markdown-mode cmd-to-echo alert magithub github-clone bug-reference-github yagist git-messenger git-commit magit-todos magit git-timemachine gitconfig-mode gitignore-mode git-blamed vc-darcs darcsum browse-at-remote diff-hl whitespace-cleanup-mode guide-key highlight-escape-sequences whole-line-or-region move-dup page-break-lines multiple-cursors expand-region browse-kill-ring symbol-overlay undo-tree rainbow-delimiters beacon vlf list-unicode-display unfill mmm-mode default-text-scale session company-quickhelp company smex flycheck-color-mode-line flycheck ibuffer-vc wgrep-ag ag anzu disable-mouse command-log-mode scratch diminish wgrep exec-path-from-shell cl-lib fullframe seq auto-org-md org-bullets nov github-modern-theme swiper-helm indent-tools avy iedit company-go go-eldoc go-mode neotree real-auto-save ranger treemacs-projectile treemacs pyvenv helm-directory imenu-list company-anaconda anaconda-mode find-temp-file helm-swoop helm-descbinds helm-ag helm-projectile helm counsel-projectile auto-virtualenv elpy nlinum mode-line-bell switch-window ivy-xref projectile counsel ivy-historian ivy diredfl dimmer)))
 '(paradox-github-token t)
 '(pdf-view-midnight-colors (quote ("#969896" . "#f8eec7")))
 '(projectile-globally-ignored-directories
   (quote
    (".idea" ".ensime_cache" ".eunit" ".git" ".hg" ".fslckout" "_FOSSIL_" ".bzr" "_darcs" ".tox" ".svn" ".stack-work" "__pycache__")))
 '(projectile-globally-ignored-file-suffixes (quote (".pyc")))
 '(projectile-project-root-files
   (quote
    ("rebar.config" "project.clj" "build.boot" "deps.edn" "SConstruct" "pom.xml" "build.sbt" "gradlew" "build.gradle" ".ensime" "Gemfile" "requirements.txt" "setup.py" "tox.ini" "composer.json" "Cargo.toml" "mix.exs" "stack.yaml" "info.rkt" "DESCRIPTION" "TAGS" "GTAGS" "configure.in" "configure.ac" "cscope.out" ".python-version")))
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
 '(anzu-replace-to ((t (:foreground "deep sky blue" :weight bold))))
 '(fringe ((t (:background "#EEEEEE"))))
 '(hl-line ((t (:background "#E4E4E4"))))
 '(imenu-list-entry-face-0 ((t (:inherit imenu-list-entry-face :foreground "firebrick"))))
 '(imenu-list-entry-face-1 ((t (:inherit imenu-list-entry-face :foreground "slate blue"))))
 '(imenu-list-entry-face-2 ((t (:inherit imenu-list-entry-face :foreground "dark cyan"))))
 '(neo-header-face ((t (:foreground "#3a81c3"))))
 '(neo-vc-added-face ((t (:foreground "light sea green"))))
 '(neo-vc-default-face ((t (:foreground "#333333"))))
 '(neo-vc-ignored-face ((t (:foreground "#777777"))))
 '(neo-vc-unlocked-changes-face ((t (:background "gray" :foreground "#183691"))))
 '(neo-vc-up-to-date-face ((t (:foreground "#777777"))))
 '(org-block ((t nil)))
 '(org-block-begin-line ((t (:inherit org-meta-line :background "light gray" :box (:line-width 2 :color "light gray" :style pressed-button) :underline t))))
 '(org-hide ((t (:foreground "light salmon"))))
 '(org-level-1 ((t (:foreground "#a71d5d" :weight bold))))
 '(org-level-3 ((t (:foreground "sea green"))))
 '(org-level-4 ((t (:foreground "dark olive green"))))
 '(rainbow-delimiters-base-face ((t (:inherit nil :slant normal))))
 '(rainbow-delimiters-depth-1-face ((t (:foreground "#cc0000" :slant normal :weight bold))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "#1f5bff" :slant normal :weight bold))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "#00af00" :slant normal :weight bold))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "#ff4ea3" :slant normal :weight bold))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "#00d7af" :slant normal :weight bold))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "#ff8700" :slant normal :weight bold))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "#b218b2" :slant normal :weight bold))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "#c4a000" :slant normal :weight bold))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "#5f5f5f" :slant normal :weight bold))))
 '(rainbow-delimiters-mismatched-face ((t (:inherit (rainbow-delimiters-unmatched-face rainbow-delimiters-base-face) :slant normal))))
 '(rainbow-delimiters-unmatched-face ((t (:background "#a40000" :foreground "#ffffff" :slant normal :weight bold))))
 '(region ((t (:background "#5fafd7" :foreground "#ffffff" :slant normal))))
 '(rst-level-1 ((t (:weight bold))))
 '(rst-level-2 ((t (:weight bold))))
 '(rst-level-3 ((t (:weight bold))))
 '(rst-level-4 ((t (:weight bold))))
 '(rst-level-5 ((t (:weight bold))))
 '(rst-level-6 ((t (:weight bold))))
 '(sh-heredoc ((t (:foreground "rosy brown" :weight bold))))
 '(smerge-lower ((t (:background "gray"))))
 '(smerge-markers ((t (:background "salmon"))))
 '(smerge-refined-removed ((t (:inherit smerge-refined-change :background "light salmon"))))
 '(smerge-upper ((t (:background "gainsboro")))))





;; linum-mode会有性能问题，卡顿，使用nlinum-mode代替
;; 默认不显示行号了，如有需要，手动开启，使用nlinum-mode
;; (if (eq system-type 'windows-nt)
;;     (message "windows下linum-mode和中英文字体都设置成文泉驿会有冲突的bug,不启用nlinum-mode")
;;   (global-nlinum-mode 1))
;; 若不出现显示问题，无需手动调整
(setq-default tab-width 4)
(use-package indent-tools
  :ensure t
  :config
  (global-set-key (kbd "C-c >") 'indent-tools-hydra/body))


;; org-mode
;; 代码语法高亮
(setq org-src-fontify-natively t)
;; 始终启用缩进
(add-hook 'org-mode-hook 'org-indent-mode)

(setq org-agenda-files (file-expand-wildcards "~/Nutstore/org/*.org"))

;; 保存org时自动转换一份md并保存
(use-package auto-org-md
  :ensure t
  :config
  (add-hook 'org-mode-hook 'auto-org-md-mode))

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

(use-package ranger
  :ensure t)

(use-package iris-edit)
(use-package iris-iedit)
(use-package iris-helm)
;; (use-package iris-ivy)
;; elpy在代码折叠时非常卡,使用anaconda代替
;;(use-package iris-python)
(use-package iris-python-anaconda-mode)

(use-package iris-go)
;; treemacs替代
(use-package iris-neotree)
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

(use-package iris-windows)

(use-package iris-projectile)

;; bhj-fonts在终端下会报错
(if (display-graphic-p)
    (use-package bhj-fonts)
  (use-package iris-font))

;; material org-theme
;; 1.浅色主题下使用
;; (use-package iris-material-org-theme-light)
;; 2.深色主题下使用
;; (use-package iris-material-org-theme-dark)


;; 光标为横线
;; (set-default 'cursor-type 'hbar)

;; 如果值为1,display "lambda" as "λ"
;; 另外python中and or等都会显示成符号,关闭
;; 不知为何,不生效
;; 注释掉 init-editing-utils.el 中的以下代码可以生效
;; (when (fboundp 'global-prettify-symbols-mode)
;;   (add-hook 'after-init-hook 'global-prettify-symbols-mode))
;; (global-prettify-symbols-mode 0)

;; 终端下也可以显示文件修改信息
(unless (display-graphic-p) (diff-hl-margin-mode))

;; 对特定的mode打开只读(全局只读时安装package时会出现编译问题)
;; (add-hook 'python-mode-hook (lambda () (setq buffer-read-only t)))

;; init-editing-utils.el已经在after-init-hook全局启用了global-auto-revert-mode,但没起作用,auto-revert-mode依然是关闭的
;; auto-revert-mode在after-init-hook添加都不起作用,原因待查,目前对特定的mode启用,也可以在prog-mode-hook启用,这样所有buffer都能起作用
;; (add-hook 'python-mode-hook (lambda () (auto-revert-mode t)))
(add-hook 'prog-mode-hook (lambda () (auto-revert-mode t)))


(global-hl-line-mode t)


;; 空白行空格问题处理
;; whitespace-cleanup函数可用,但不绑定whitespace-cleanup-mode到任何hook
;; whitespace-cleanup-mode会在自动保存的时候执行whitespace-cleanup,导致光标在空白行的一直回行首
;; show-trailing-whitespace高亮显示空白行的空格
;; (use-package whitespace-cleanup-mode
;;   :ensure t)
;; (setq-default show-trailing-whitespace t)
;; 所有行尾及新行显示$,不能直接启用(global-whitespace-newline-mode t),否则会触发whitespace-mode
;; 和show-trailing-whitespace只能二选一,且由于显示过多的$导致看起来比较零乱,禁用
;; (add-hook 'prog-mode-hook (lambda () (whitespace-newline-mode t)))


(global-set-key (kbd "C-0") (quote scroll-up-line))
(global-set-key (kbd "C-9") (quote scroll-down-line))
