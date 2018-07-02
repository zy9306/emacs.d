;; 以下取自leuven-theme

(deftheme spacemacs-light
  "Created 2018-07-02.")

(custom-theme-set-variables
 'spacemacs-light
 '(ansi-color-names-vector ["#d2ceda" "#f2241f" "#67b11d" "#b1951d" "#3a81c3" "#a31db1" "#21b8c7" "#655370"]))

(custom-theme-set-faces
 'spacemacs-light
 '(font-lock-builtin-face ((((class color) (min-colors 89)) (:foreground "#006FE0"))))
 '(font-lock-comment-delimiter-face ((((class color) (min-colors 89)) (:foreground "#8D8D84"))))
 '(font-lock-comment-face ((((class color) (min-colors 89)) (:slant italic :foreground "#8D8D84"))))
 '(font-lock-constant-face ((((class color) (min-colors 89)) (:foreground "#D0372D"))))
 '(font-lock-doc-face ((((class color) (min-colors 89)) (:foreground "#036A07"))))
 '(font-lock-function-name-face ((((class color) (min-colors 89)) (:weight normal :foreground "#006699"))))
 '(font-lock-keyword-face ((((class color) (min-colors 89)) (:bold nil :foreground "#0000FF"))))
 '(font-lock-preprocessor-face ((((class color) (min-colors 89)) (:foreground "#808080"))))
 '(font-lock-regexp-grouping-backslash ((((class color) (min-colors 89)) (:weight bold :inherit nil))))
 '(font-lock-regexp-grouping-construct ((((class color) (min-colors 89)) (:weight bold :inherit nil))))
 '(font-lock-string-face ((((class color) (min-colors 89)) (:foreground "#008000"))))
 '(font-lock-type-face ((((class color) (min-colors 89)) (:weight normal :foreground "#6434A3"))))
 '(font-lock-variable-name-face ((((class color) (min-colors 89)) (:weight normal :foreground "#BA36A5"))))
 '(font-lock-warning-face ((((class color) (min-colors 89)) (:weight bold :foreground "red"))))
 '(org-agenda-calendar-event ((((class color) (min-colors 89)) (:weight bold :foreground "#3774CC" :background "#A8C5EF"))))
 '(org-agenda-calendar-sexp ((((class color) (min-colors 89)) (:foreground "#777777" :background "#E4EBFE"))))
 '(org-agenda-clocking ((((class color) (min-colors 89)) (:foreground "black" :background "#EEC900"))))
 '(org-agenda-column-dateline ((((class color) (min-colors 89)) (:height 1.0 :weight normal :slant normal :underline nil :strike-through nil :foreground "#E6AD4F" :background "#FFF2DE"))))
 '(org-agenda-current-time ((((class color) (min-colors 89)) (:underline t :foreground "#1662AF"))))
 '(org-agenda-date ((((class color) (min-colors 89)) (:height 1.6 :weight bold :foreground "#1662AF"))))
 '(org-agenda-date-today ((((class color) (min-colors 89)) (:height 1.6 :weight bold :foreground "#4F4A3D" :background "#FFFFCC"))))
 '(org-agenda-date-weekend ((((class color) (min-colors 89)) (:height 1.6 :weight bold :foreground "#4E4E4E"))))
 '(org-agenda-diary ((((class color) (min-colors 89)) (:weight bold :foreground "green4" :background "light blue"))))
 '(org-agenda-dimmed-todo-face ((((class color) (min-colors 89)) (:foreground "gold2"))))
 '(org-agenda-done ((((class color) (min-colors 89)) (:foreground "#555555"))))
 '(org-agenda-filter-category ((((class color) (min-colors 89)) (:weight bold :foreground "orange"))))
 '(org-agenda-filter-tags ((((class color) (min-colors 89)) (:weight bold :foreground "orange"))))
 '(org-agenda-restriction-lock ((((class color) (min-colors 89)) (:background "#E77D63"))))
 '(org-agenda-structure ((((class color) (min-colors 89)) (:height 1.6 :weight bold :foreground "#1F8DD6"))))
 '(org-archived ((((class color) (min-colors 89)) (:foreground "gray70"))))
 '(org-block ((((class color) (min-colors 89)) (:foreground "#000088" :background "#FFFFE0"))))
 '(org-block-begin-line ((((class color) (min-colors 89)) (:underline "#A7A6AA" :foreground "#555555" :background "#E2E1D5"))))
 '(org-block-end-line ((((class color) (min-colors 89)) (:overline "#A7A6AA" :foreground "#555555" :background "#E2E1D5"))))
 '(org-checkbox ((((class color) (min-colors 89)) (:weight bold :box (:line-width 1 :style pressed-button) :foreground "white" :background "#777777"))))
 '(org-clock-overlay ((((class color) (min-colors 89)) (:foreground "white" :background "SkyBlue4"))))
 '(org-code ((((class color) (min-colors 89)) (:foreground "#006400" :background "#FDFFF7"))))
 '(org-column ((((class color) (min-colors 89)) (:height 1.0 :weight normal :slant normal :underline nil :strike-through nil :foreground "#E6AD4F" :background "#FFF2DE"))))
 '(org-column-title ((((class color) (min-colors 89)) (:height 1.0 :weight normal :slant normal :underline nil :strike-through nil :foreground "#E6AD4F" :background "#FFF2DE"))))
 '(org-date ((((class color) (min-colors 89)) (:underline t :foreground "#00459E"))))
 '(org-default ((((class color) (min-colors 89)) (:foreground "#333333" :background "#FFFFFF"))))
 '(org-document-info ((((class color) (min-colors 89)) (:foreground "#484848"))))
 '(org-document-info-keyword ((((class color) (min-colors 89)) (:foreground "#008ED1" :background "#EAEAFF"))))
 '(org-document-title ((((class color) (min-colors 89)) (:family "Sans Serif" :height 1.8 :weight bold :foreground "black"))))
 '(org-done ((((class color) (min-colors 89)) (:weight bold :box (:line-width 1 :color "#BBBBBB") :foreground "#BBBBBB" :background "#F0F0F0"))))
 '(org-drawer ((((class color) (min-colors 89)) (:foreground "light sky blue"))))
 '(org-ellipsis ((((class color) (min-colors 89)) (:underline nil :box (:line-width 1 :color "#999999") :foreground "#999999" :background "#FFF8C0"))))
 '(org-footnote ((((class color) (min-colors 89)) (:underline t :foreground "#008ED1"))))
 '(org-formula ((((class color) (min-colors 89)) (:foreground "chocolate1"))))
 '(org-headline-done ((((class color) (min-colors 89)) (:height 1.0 :weight normal :strike-through t :foreground "#ADADAD"))))
 '(org-hide ((((class color) (min-colors 89)) (:foreground "#E2E2E2"))))
 '(org-latex-and-related ((((class color) (min-colors 89)) (:foreground "#336699" :background "white"))))
 '(org-level-1 ((((class color) (min-colors 89)) (:height 1.3 :weight bold :overline "#A7A7A7" :foreground "#3C3C3C" :background "#F0F0F0"))))
 '(org-level-2 ((((class color) (min-colors 89)) (:height 1.0 :weight bold :overline "#123555" :foreground "#123555" :background "#E5F4FB"))))
 '(org-level-3 ((((class color) (min-colors 89)) (:height 1.0 :weight bold :foreground "#005522" :background "#EFFFEF"))))
 '(org-level-4 ((((class color) (min-colors 89)) (:height 1.0 :weight bold :slant normal :foreground "#EA6300"))))
 '(org-level-5 ((((class color) (min-colors 89)) (:height 1.0 :weight bold :slant normal :foreground "#E3258D"))))
 '(org-level-6 ((((class color) (min-colors 89)) (:height 1.0 :weight bold :slant italic :foreground "#0077CC"))))
 '(org-level-7 ((((class color) (min-colors 89)) (:height 1.0 :weight bold :slant italic :foreground "#2EAE2C"))))
 '(org-level-8 ((((class color) (min-colors 89)) (:height 1.0 :weight bold :slant italic :foreground "#FD8008"))))
 '(org-link ((((class color) (min-colors 89)) (:weight normal :underline t :foreground "#006DAF"))))
 '(org-list-dt ((((class color) (min-colors 89)) (:weight bold :foreground "#335EA8"))))
 '(org-macro ((((class color) (min-colors 89)) (:foreground "white" :background "#EDB802"))))
 '(org-meta-line ((((class color) (min-colors 89)) (:slant normal :foreground "#008ED1" :background "#EAEAFF"))))
 '(org-mode-line-clock ((((class color) (min-colors 89)) (:box (:line-width 1 :color "#335EA8") :foreground "black" :background "#EEC900"))))
 '(org-mode-line-clock-overrun ((((class color) (min-colors 89)) (:weight bold :box (:line-width 1 :color "#335EA8") :foreground "white" :background "#FF4040"))))
 '(org-property-value ((((class color) (min-colors 89)) (:foreground "#00A000"))))
 '(org-quote ((((class color) (min-colors 89)) (:slant italic :foreground "dim gray" :background "#FFFFE0"))))
 '(org-scheduled ((((class color) (min-colors 89)) (:foreground "#333333"))))
 '(org-scheduled-previously ((((class color) (min-colors 89)) (:foreground "#F22659"))))
 '(org-scheduled-today ((((class color) (min-colors 89)) (:weight bold :foreground "#4F4A3D" :background "#FFFFCC"))))
 '(org-sexp-date ((((class color) (min-colors 89)) (:foreground "#3774CC"))))
 '(org-special-keyword ((((class color) (min-colors 89)) (:weight bold :foreground "#00BB00" :background "#EAFFEA"))))
 '(org-table ((((class color) (min-colors 89)) (:foreground "dark green" :background "#EAFFEA"))))
 '(org-tag ((((class color) (min-colors 89)) (:weight normal :slant italic :foreground "#9A9FA4" :background "white"))))
 '(org-target ((((class color) (min-colors 89)) (:weight normal :underline t :foreground "#006DAF"))))
 '(org-time-grid ((((class color) (min-colors 89)) (:foreground "#CFCFCF"))))
 '(org-todo ((((class color) (min-colors 89)) (:weight bold :box (:line-width 1 :color "#D8ABA7") :foreground "#D8ABA7" :background "#FFE6E4"))))
 '(org-upcoming-deadline ((((class color) (min-colors 89)) (:foreground "#FF5555"))))
 '(org-verbatim ((((class color) (min-colors 89)) (:foreground "#0066CC"))))
 '(org-verse ((((class color) (min-colors 89)) (:slant italic :foreground "dim gray" :background "#EEEEEE"))))
 '(org-warning ((((class color) (min-colors 89)) (:weight bold :foreground "black" :background "#CCE7FF"))))
 '(default ((((class color) (min-colors 89)) (:foreground "#333333" :background "#FFFFFF"))))
 )

(provide 'iris-theme)
