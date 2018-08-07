;;; https://github.com/spotify/dockerfile-mode/tree/64733f64ea9be1e5e534e590846869b75c62ed1f
;;; Adds syntax highlighting as well as the ability to build the image directly (C-c C-b) from the buffer.
;;; You can specify the image name in the file itself by adding a line like this at the top of your Dockerfile.
;;; ## -*- docker-image-name: "your-image-name-here" -*-

(use-package dockerfile-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode)))


(provide 'iris-dockerfile-mode)
