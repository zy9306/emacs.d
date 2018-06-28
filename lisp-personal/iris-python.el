(use-package elpy
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
  ;; One-line install: pip install jedi flake8 autopep8
  ;; 也可以通过这种方式安装所有依赖 sudo apt install elpa-elpy

  ;; 虚拟环境支持
  ;; pyvenv - used in elpy, written by the same author.
  ;; auto-virtualenv - uses pyvenv.
  ;; 需要设置$WORKON_HOME

  :ensure t
  :ensure pyvenv
  :ensure auto-virtualenv
  :config
  (package-initialize)
  (elpy-enable)

  ;; 项目根目录增加 .python-version里面写上虚拟环境的名称(须包含路径)如：~/Envs/venv36/
  (require 'auto-virtualenv)
  (add-hook 'python-mode-hook 'auto-virtualenv-set-virtualenv)
  ;; Activate on changing buffers
  (add-hook 'window-configuration-change-hook 'auto-virtualenv-set-virtualenv)
  ;; Activate on focus in
  (add-hook 'focus-in-hook 'auto-virtualenv-set-virtualenv)
  (add-hook 'projectile-after-switch-project-hook 'auto-virtualenv-set-virtualenv)
  ;; 可能需要更改
  (setenv "WORKON_HOME" "~/Envs")
  ;; 修改单词分界符，下划线也属于单词一部分
  (defun my-python-mode-hook ()
    (modify-syntax-entry ?_ "w"))
  (add-hook 'python-mode-hook 'my-python-mode-hook))


;; 补充相关语法高亮
;; 启用spacemacs-theme,已不需要,暂留作参考
;; 函数调用高亮
;; (font-lock-add-keywords
;;  'python-mode
;;  '(("\\<\\(\\sw+\\) ?(" 1 'font-lock-function-name-face)))

;; (defface python-class-face
;;   '((t :foreground "#445588"
;;        :weight bold
;;        ))
;;   "Face for global variables."
;;   :group 'iris-python-mode )

;; (defface python-self-face
;;   '((t :foreground "#94558D"
;;        ))
;;   "Face for global variables."
;;   :group 'iris-python-mode )

;; ;; 装饰器有问题待修改
;; (defface python-decorator-face
;;   '((t :foreground "#990000"
;;        :weight bold
;;        ))
;;   "Face for global variables."
;;   :group 'iris-python-mode )

;; (defface python-number-face
;;   '((t :foreground "#009999"
;;        ))
;;   "Face for global variables."
;;   :group 'iris-python-mode )

;; (defface python-operation-face
;;   '((t :foreground "#000000"
;;        :weight bold
;;        ))
;;   "Face for global variables."
;;   :group 'iris-python-mode )

;; (font-lock-add-keywords
;;  'python-mode
;;  '(("\\<class \\(\\sw+\\)" 1 'python-class-face)))

;; (font-lock-add-keywords
;;  'python-mode
;;  '(("\\<self" 0 'python-self-face)))

;; (font-lock-add-keywords
;;  'python-mode
;;  '(("\\<@\\(\\sw+\\)" 1 'python-decorator-face)))

;; (font-lock-add-keywords
;;  'python-mode
;;  '(("\\<[0-9]+\\(\\.?[0-9]+\\)?" 0 'python-number-face)))

(provide 'iris-python)
;;; iris-python.el ends here
