;;; package --- Summary
;;; Commentary:
;;; code:

;; 只能设置英文
;; (if (display-graphic-p)
;;     (progn
;;       (set-face-attribute 'default nil :font
;;                           "Source Code Pro 14")
;;       (setq default-frame-alist
;;             (append '((font . "Source Code Pro 14")) default-frame-alist))
;;       ))


;; ok
;; Setting English Font
(set-face-attribute 'default nil :font "Source Code Pro 14")

;; Chinese Font
;; (dolist (charset '(kana han symbol cjk-misc bopomofo))
;;   (set-fontset-font (frame-parameter nil 'font)
;;                     charset (font-spec :family "思源黑体"
;;                                        :size 16)))
;; fix: 不设:size,而是改用1.2倍缩放,如果直接设置字号,则页面缩放时只能缩放英文
;; 中文字体在-nw时都会报错
(if (display-graphic-p)
    (dolist (charset '(kana han symbol cjk-misc bopomofo))
      (set-fontset-font (frame-parameter nil 'font)
                        charset (font-spec :family "思源黑体"))))
(if (display-graphic-p)
    ;; 这里的字体名并不一定是上面设置的名字,可以能过选中页面中的某一中文,C-u C-x =进行查看
    (setq face-font-rescale-alist '(("Source Han Sans SC" . 1.2))))

;; 调整倍数使以下中文和英文长度相等
;; 你你你你你你你你你你你你你你你你你你你你
;; aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa


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

;;; iris-font.el ends here
