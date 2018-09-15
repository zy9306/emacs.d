(use-package ivy
  :ensure t
  :ensure swiper
  :ensure counsel
  :ensure counsel-projectile

  :config
  (ivy-mode 1)
  (counsel-mode 1)
  (counsel-projectile-mode 1)

  (setq ivy-use-virtual-buffers t)
  (setq enable-recursive-minibuffers t)
  (setq ivy-count-format "(%d/%d) ")
  (setq magit-completing-read-function 'ivy-completing-read)
  (setq projectile-completion-system 'ivy)
  (setq ivy-initial-inputs-alist '((man . "^") (woman . "^")))

  ;; C-x C-f时,如果是目录,RET补全目录,而不是进入dired
  (define-key ivy-minibuffer-map (kbd "RET") #'ivy-alt-done)
  (dolist (k '("C-j" "C-RET"))
    (define-key ivy-minibuffer-map (kbd k) #'ivy-immediate-done))

  (global-set-key "\C-s" 'swiper)
  (global-set-key (kbd "C-c C-r") 'ivy-resume)
  (global-set-key (kbd "<f6>") 'ivy-resume)
  (global-set-key (kbd "M-x") 'counsel-M-x)
  (global-set-key (kbd "C-x C-f") 'counsel-find-file)
  (global-set-key (kbd "<f1> f") 'counsel-describe-function)
  (global-set-key (kbd "<f1> v") 'counsel-describe-variable)
  (global-set-key (kbd "<f1> l") 'counsel-find-library)
  (global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
  (global-set-key (kbd "<f2> u") 'counsel-unicode-char)
  (global-set-key (kbd "C-c g") 'counsel-git)
  (global-set-key (kbd "C-c j") 'counsel-git-grep)
  (global-set-key (kbd "C-c k") 'counsel-ag)
  (global-set-key (kbd "C-x l") 'counsel-locate)
  (global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
  (define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)

  (setq counsel-projectile-action
        (quote
         (1
          ("o" counsel-projectile-action "current window")
          ("j" counsel-projectile-action-other-window "other window")
          ("k" counsel-projectile-action-kill-buffer "kill buffer")
          ("x" counsel-projectile-action-file-extern "open file externally")
          ("r" counsel-projectile-action-file-root "open file as root")
          ("m" counsel-projectile-action-find-file-manually "find file manually")
          ("p"
           (lambda
             (_)
             (counsel-projectile-switch-project))
           "switch project")
          ("f" find-file-other-frame "other frame")
          ("D" delete-file "delete-file"))))

  (setq counsel-projectile-find-file-action
        (quote
         (1
          ("o" counsel-projectile-find-file-action "current window")
          ("j" counsel-projectile-find-file-action-other-window "other window")
          ("x" counsel-projectile-find-file-action-extern "open externally")
          ("r" counsel-projectile-find-file-action-root "open as root")
          ("m" counsel-projectile-find-file-action-find-file-manually "find file manually")
          ("p"
           (lambda
             (_)
             (counsel-projectile-switch-project))
           "switch project")
          ("f" find-file-other-frame "other frame")
          ("D" delete-file "delete-file")))))


(use-package ivy-xref
  :ensure t
  :init (setq xref-show-xrefs-function #'ivy-xref-show-xrefs))


(provide 'iris-ivy)
