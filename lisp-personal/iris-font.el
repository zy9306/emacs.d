;; ;; 中文与外文字体设置
;; (defun set-font (english chinese english-size chinese-size)
;;   (set-face-attribute 'default nil :font
;;                       (format   "%s:pixelsize=%d"  english english-size))
;;   (dolist (charset '(kana han symbol cjk-misc bopomofo))
;;     (set-fontset-font (frame-parameter nil 'font) charset
;;                       (font-spec :family chinese :size chinese-size))))
;; ;; 解决fontset 'tty' does not exist
;; ;; 终端运行过后，再次打开图形界面会出现(error "Font ‘tty’ is not defined")
;; ;; 需删除.emacs.desktop文件，目前没有合适的解决方案，据说emacs26修复了这个问题
;; ;; .emacs.desktop无法同时适用于tty和x环境
;; (if (display-graphic-p)
;;     (set-font   "文泉驿等宽微米黑" "文泉驿等宽微米黑" 13 13))
;;; 以上弃用,原因,无法正常缩放中文字体

;; 以下方法可用,但有缺陷,字体大小无法调到合适,11号太大,10号又偏小
;; Source Code Pro不是中英文等宽的,高度会不一致
(if (display-graphic-p)
    (progn
      (set-face-attribute 'default nil :font
                          "Source Code Pro 11")
      (setq default-frame-alist
            (append '((font . "Source Code Pro 11")) default-frame-alist))
      ))

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

(provide 'iris-font)
