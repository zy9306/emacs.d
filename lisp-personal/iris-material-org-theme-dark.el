(deftheme material-custom
  "Created 2018-07-21.")

(custom-theme-set-variables
 'material-custom
 '(ansi-color-names-vector ["#ffffff" "#f36c60" "#8bc34a" "#fff59d" "#4dd0e1" "#b39ddb" "#81d4fa" "#263238"])
 '(ansi-color-faces-vector [default bold shadow italic underline bold bold-italic bold]))

(custom-theme-set-faces
 'material-custom
 '(org-agenda-structure ((((class color) (min-colors 89)) (:foreground "#81d4fa" :bold t))))
 '(org-agenda-date ((((class color) (min-colors 89)) (:foreground "#4dd0e1" :underline nil))))
 '(org-agenda-done ((((class color) (min-colors 89)) (:foreground "#8bc34a"))))
 '(org-agenda-dimmed-todo-face ((((class color) (min-colors 89)) (:foreground "#b0bec5"))))
 '(org-block ((((class color) (min-colors 89)) (:foreground "#8bc34a" :background "#1c1f26"))))
 '(org-code ((((class color) (min-colors 89)) (:foreground "#8bc34a" :background "#1c1f26"))))
 '(org-column ((((class color) (min-colors 89)) (:background "#37474f"))))
 '(org-column-title ((((class color) (min-colors 89)) (:inherit org-column :weight bold :underline t))))
 '(org-date ((((class color) (min-colors 89)) (:foreground "#80cbc4" :underline t))))
 '(org-document-info ((((class color) (min-colors 89)) (:foreground "#81d4fa" :height 1.35))))
 '(org-document-info-keyword ((((class color) (min-colors 89)) (:foreground "#8bc34a" :height 1.35))))
 '(org-document-title ((((class color) (min-colors 89)) (:weight bold :foreground "#ffffff" :height 1.35))))
 '(org-done ((((class color) (min-colors 89)) (:foreground "#8bc34a" :bold t :background "#1b5e20"))))
 '(org-ellipsis ((((class color) (min-colors 89)) (:foreground "#b0bec5"))))
 '(org-footnote ((((class color) (min-colors 89)) (:foreground "#81d4fa"))))
 '(org-formula ((((class color) (min-colors 89)) (:foreground "#f36c60"))))
 '(org-hide ((((class color) (min-colors 89)) (:foreground "#263238" :background "#263238"))))
 '(org-link ((((class color) (min-colors 89)) (:foreground "#4dd0e1" :underline t))))
 '(org-scheduled ((((class color) (min-colors 89)) (:foreground "#8bc34a"))))
 '(org-scheduled-previously ((((class color) (min-colors 89)) (:foreground "#ff9800"))))
 '(org-scheduled-today ((((class color) (min-colors 89)) (:foreground "#8bc34a"))))
 '(org-special-keyword ((((class color) (min-colors 89)) (:foreground "#b0bec5"))))
 '(org-table ((((class color) (min-colors 89)) (:foreground "#e3f2fd" :background "#1c1f26"))))
 '(org-todo ((((class color) (min-colors 89)) (:foreground "#ffab91" :bold t :background "#dd2c00"))))
 '(org-upcoming-deadline ((((class color) (min-colors 89)) (:foreground "#ff9800"))))
 '(org-warning ((((class color) (min-colors 89)) (:weight bold :foreground "#f36c60"))))
 '(org-block-begin-line ((((class color) (min-colors 89)) (:foreground "#b3e5fc" :background "#1e2930" :box (:style released-button)))))
 '(org-block-end-line ((((class color) (min-colors 89)) (:foreground "#b3e5fc" :background "#1e2930" :box (:style released-button)))))
 ;; level1,2,3的height原本分别为1.3,1.2,1.1
 '(org-level-1 ((((class color) (min-colors 89)) (:inherit outline-1 :background "#455A64" :weight bold :box (:style released-button) :height 1.0))))
 '(org-level-2 ((((class color) (min-colors 89)) (:inherit outline-2 :background "#35575b" :box (:style released-button) :height 1.0))))
 '(org-level-3 ((((class color) (min-colors 89)) (:inherit outline-3 :height 1.0))))
 '(org-level-4 ((((class color) (min-colors 89)) (:inherit outline-4 :height 1.0))))
 '(org-level-5 ((((class color) (min-colors 89)) (:inherit outline-5))))
 '(org-level-6 ((((class color) (min-colors 89)) (:inherit outline-6))))
 '(org-level-7 ((((class color) (min-colors 89)) (:inherit outline-7))))
 '(org-level-8 ((((class color) (min-colors 89)) (:inherit outline-8)))))

(provide 'iris-material-org-theme-dark)
