;;; ============================================================

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

;;; 也可以在启动之后运行 package-install-selected-packages
(require-package 'github-theme)
(require-package 'github-modern-theme)
(require-package 'use-package)
(require-package 'multiple-cursors)

;;; -------python-------
(require-package 'elpy)
(require-package 'pyvenv)
(require-package 'auto-virtualenv)

(require-package 'buffer-move)

(require-package 'all-the-icons)
(require-package 'neotree)


;; https://github.com/ericdanan/counsel-projectile/tree/a95ef966aeeaa6ab0b90fe8d29c31f6d92f99fb6#installation
;; Ivy UI for Projectile，未装此包前就已经可以了，
;; 目前来看唯一的作用只是C-c p s g的时候结果显示在minibuffer中，但是这样也有缺点，默认是不启用的，想启用该功能
;; 可以打开 counsel-projectile-mode ，其它功能待探索，若没有必要可以删除此包
(require-package 'counsel-projectile)


(defvar emacs-dir (file-name-directory load-file-name)
  "The root dir of the .emacs.d")
(defvar personal-lisp-dir (expand-file-name "lisp-personal" emacs-dir))
(add-to-list 'load-path personal-lisp-dir)

;;; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

;;; ============================================================

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(beacon-color "#d54e53")
 '(custom-enabled-themes (quote (github)))
 '(custom-safe-themes
   (quote
    ("82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "3b5ce826b9c9f455b7c4c8bff22c020779383a12f2f57bf2eb25139244bb7290" "2cfc1cab46c0f5bae8017d3603ea1197be4f4fff8b9750d026d19f0b9e606fae" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" default)))
 '(flycheck-color-mode-line-face-to-color (quote mode-line-buffer-id))
 '(frame-background-mode (quote dark))
 '(package-selected-packages
   (quote
    (counsel-projectile buffer-move auto-virtualenv elpy use-package github-modern-theme github-theme nlinum beacon mode-line-bell vlf list-unicode-display unfill mmm-mode default-text-scale session switch-window company-quickhelp company ivy-xref projectile counsel ivy-historian ivy smex flycheck-color-mode-line flycheck ibuffer-vc anzu diff-hl diredfl disable-mouse dimmer color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized command-log-mode scratch diminish wgrep exec-path-from-shell fullframe)))
 '(session-use-package t nil (session)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<


;;; ============================================================

(if (eq system-type 'windows-nt)
    (message "windows下linum-mode和中英文字体都设置成文泉驿会有冲突的bug,不启用linum-mode")
  (global-linum-mode 1))

;;; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

;;; ============================================================

;; (setq linum-format "  %d ")
;; (desktop-save-mode 1)
(global-visual-line-mode 1)
(setq-default tab-width 4)

;;; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

;;; ============================================================

;;中文与外文字体设置
(defun set-font (english chinese english-size chinese-size)
  (set-face-attribute 'default nil :font
                      (format   "%s:pixelsize=%d"  english english-size))
  (dolist (charset '(kana han symbol cjk-misc bopomofo))
    (set-fontset-font (frame-parameter nil 'font) charset
                      (font-spec :family chinese :size chinese-size))))
(set-font   "文泉驿等宽微米黑" "文泉驿等宽微米黑" 13 13)

;;; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<


;;; ============================================================

;; 使用use-package
;; This is only needed once, near the top of the file
(eval-when-compile
  ;; Following line is not needed if use-package.el is in ~/.emacs.d
  ;; (add-to-list 'load-path "<path where use-package is installed>")
  (require 'use-package))

;;; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

(use-package unicad)




;;; ============================================================

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

;;; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



;;; ============================================================

;; Python IDE
;; 使用elpy代替anaconda-mode
;; 关于python 参考https://www.emacswiki.org/emacs/PythonProgrammingInEmacs#toc3
;; https://github.com/jorgenschaefer/elpy

;; 需要依赖相应python lib
;; # Either of these
;; pip install rope
;; pip install jedi
;; # flake8 for code checks
;; pip install flake8
;; # and autopep8 for automatic PEP8 formatting
;; pip install autopep8
;; # and yapf for code formatting
;; pip install yapf
;;; One-line install: pip install jedi flake8 autopep8
;;; 也可以通过这种方式安装所有依赖 sudo apt install elpa-elpy

(package-initialize)
(elpy-enable)

;; 虚拟环境支持
;; pyvenv - used in elpy, written by the same author.
;; auto-virtualenv - uses pyvenv.
;; 需要设置$WORKON_HOME

;; 项目根目录增加 .python-version里面写上虚拟环境的名称如：venv36
(require 'auto-virtualenv)
(add-hook 'python-mode-hook 'auto-virtualenv-set-virtualenv)
;; Activate on changing buffers
(add-hook 'window-configuration-change-hook 'auto-virtualenv-set-virtualenv)
;; Activate on focus in
(add-hook 'focus-in-hook 'auto-virtualenv-set-virtualenv)

(add-hook 'projectile-after-switch-project-hook 'auto-virtualenv-set-virtualenv)

;; 可能需要更改
(setenv "WORKON_HOME" "~/Envs")

;;; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



;;; ============================================================

;; 设置字符集
;; 如果一个非 UTF-8 编码, 比如 GBK 编码的文件打开, 可能 Emacs 会乱码, 这时候 M-x revert-buffer-with-coding-system 选择 gbk 即可.
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)
(set-buffer-file-coding-system 'utf-8-unix)
(set-clipboard-coding-system 'utf-8-unix)
(set-file-name-coding-system 'utf-8-unix)
(set-keyboard-coding-system 'utf-8-unix)
(set-next-selection-coding-system 'utf-8-unix)
(set-selection-coding-system 'utf-8-unix)
(set-terminal-coding-system 'utf-8-unix)
(setq locale-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(when (eq system-type 'windows-nt)
  (set-default 'process-coding-system-alist
               '(("[pP][lL][iI][nN][kK]" gbk-dos . gbk-dos)
                 ("[cC][mM][dD][pP][rR][oO][xX][yY]" gbk-dos . gbk-dos))))

;;; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



;;; ============================================================

;; org-mode
;; 代码语法高亮
(setq org-src-fontify-natively t)
;; 始终启用缩进
(add-hook 'org-mode-hook 'org-indent-mode)


(setq org-agenda-files (file-expand-wildcards "~/Nutstore/org/*.org"))

;;; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

;;; ============================================================

;;; 改变buffer位置，比如将buffer移到左边或右边
;;; https://github.com/lukhas/buffer-move/tree/cb517ecf8409b5fdcda472d7190c6021f0c49751
(require 'buffer-move)
(global-set-key (kbd "<C-S-up>")     'buf-move-up)
(global-set-key (kbd "<C-S-down>")   'buf-move-down)
(global-set-key (kbd "<C-S-left>")   'buf-move-left)
(global-set-key (kbd "<C-S-right>")  'buf-move-right)
;; (setq buffer-move-behavior 'move)  不交换缓冲区内容

;;; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<


;;; ============================================================

;;;all-the-icons
(require 'all-the-icons)

;;; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



;;; ============================================================

;;; neotree
;;; theme: classic(default) ascii arrow icons nerd
;;; For users who want to use the icons theme. Pls make sure you have installed the all-the-icons package and its fonts.
;;; neotree comes with default bindings of | for vertical split and - for horizontal split.在新缓冲区打开文件
(global-set-key [f8] 'neotree-toggle)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))

;; Every time when the neotree window is opened, let it find current file and jump to node.
(setq neo-smart-open t)

;;当执行 projectile-switch-project (C-c p p) 时，NeoTree 会自动改变根目录。
(setq projectile-switch-project-action 'neotree-projectile-action)

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

;; 和上述功能相似，具体区别再研究，目前上述已够用
;; (defun neotree-project-dir-toggle ()
;;   "Open NeoTree using the project root, using find-file-in-project,
;; or the current buffer directory."
;;   (interactive)
;;   (let ((project-dir
;;          (ignore-errors
;;            ;;; Pick one: projectile or find-file-in-project
;;                                         ; (projectile-project-root)
;;            (ffip-project-root)
;;            ))
;;         (file-name (buffer-file-name))
;;         (neo-smart-open t))
;;     (if (and (fboundp 'neo-global--window-exists-p)
;;              (neo-global--window-exists-p))
;;         (neotree-hide)
;;       (progn
;;         (neotree-show)
;;         (if project-dir
;;             (neotree-dir project-dir))
;;         (if file-name
;;             (neotree-find file-name))))))
;; (global-set-key [f9] 'neotree-project-dir-toggle)

;;; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

