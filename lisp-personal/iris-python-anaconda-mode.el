(use-package anaconda-mode
  ;; https://github.com/proofit404/anaconda-mode
  :ensure t
  :ensure pyvenv
  :ensure auto-virtualenv
  :ensure company-anaconda
  :config
  (add-hook 'python-mode-hook 'anaconda-mode)
  (add-hook 'python-mode-hook 'anaconda-eldoc-mode)
  (eval-after-load "company"
    '(add-to-list 'company-backends 'company-anaconda))

  ;; 删除括号连同内容paredit-raise-sexp,KEY为M-r,和anaconda的查找引用冲突,在此更改
  (global-set-key (kbd "C-c M-r") 'anaconda-mode-find-references)

  ;; add .python-version file to project root, then add path of virtualenv eg:~/Envs/venv36/
  (require 'auto-virtualenv)
  (add-hook 'python-mode-hook 'auto-virtualenv-set-virtualenv)
  ;; Activate on changing buffers
  (add-hook 'window-configuration-change-hook 'auto-virtualenv-set-virtualenv)
  ;; Activate on focus in
  (add-hook 'focus-in-hook 'auto-virtualenv-set-virtualenv)
  (add-hook 'projectile-after-switch-project-hook 'auto-virtualenv-set-virtualenv)
  ;; path of virtualenv
  (setenv "WORKON_HOME" "~/Envs")
  ;; 修改单词分界符，下划线也属于单词一部分
  (defun my-python-mode-hook ()
    (modify-syntax-entry ?_ "w"))
  (add-hook 'python-mode-hook 'my-python-mode-hook)
  ;; 设置ipython
  (setq python-shell-interpreter "ipython"
        python-shell-interpreter-args "-i --simple-prompt"))


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

(provide 'iris-python-anaconda-mode)
;;; iris-python.el ends here
