;; 清华镜像站的上游是 http://elpa.emacs-china.org/
;; https://mirrors.tuna.tsinghua.edu.cn/help/elpa/
;; http://elpa.emacs-china.org/

;; (setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
;;                          ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))

(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                         ("melpa" . "http://elpa.emacs-china.org/melpa/")))
 
(package-initialize) ;; You might already have this line

(provide 'init-preload-local)
