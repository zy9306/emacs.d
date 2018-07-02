(deftheme spacemacs-light
  "Created 2018-07-02.")

(custom-theme-set-variables
 'spacemacs-light
 '(ansi-color-names-vector ["#d2ceda" "#f2241f" "#67b11d" "#b1951d" "#3a81c3" "#a31db1" "#21b8c7" "#655370"]))

(custom-theme-set-faces
 'spacemacs-light
 '(cursor ((((class color) (min-colors 89)) (:background "#100a14"))))
 '(custom-button ((((class color) (min-colors 89)) :background "#efeae9" :foreground "#655370" :box (:line-width 2 :style released-button))))
 '(error ((((class color) (min-colors 89)) (:foreground "#e0211d"))))
 '(font-lock-builtin-face ((((class color) (min-colors 89)) (:foreground "#3a81c3"))))
 '(font-lock-comment-face ((((class color) (min-colors 89)) (:foreground "#2aa1ae" :background "#ecf3ec" :slant normal))))
 '(font-lock-constant-face ((((class color) (min-colors 89)) (:foreground "#4e3163"))))
 '(font-lock-doc-face ((((class color) (min-colors 89)) (:foreground "#da8b55"))))
 '(font-lock-function-name-face ((((class color) (min-colors 89)) (:foreground "#6c3163" :inherit bold))))
 '(font-lock-keyword-face ((((class color) (min-colors 89)) (:inherit bold :foreground "#3a81c3"))))
 '(font-lock-negation-char-face ((((class color) (min-colors 89)) (:foreground "#4e3163"))))
 '(font-lock-preprocessor-face ((((class color) (min-colors 89)) (:foreground "#6c3163"))))
 '(font-lock-string-face ((((class color) (min-colors 89)) (:foreground "#2d9574"))))
 '(font-lock-type-face ((((class color) (min-colors 89)) (:foreground "#ba2f59" :inherit bold))))
 '(font-lock-variable-name-face ((((class color) (min-colors 89)) (:foreground "#715ab1"))))
 '(font-lock-warning-face ((((class color) (min-colors 89)) (:foreground "#dc752f" :background "#fbf8ef"))))
 '(fringe ((((class color) (min-colors 89)) (:background "#fbf8ef" :foreground "#655370"))))
 '(header-line ((((class color) (min-colors 89)) :background "#d2ceda")))
 '(highlight ((((class color) (min-colors 89)) (:foreground "#655370" :background "#d3d3e7"))))
 '(isearch ((((class color) (min-colors 89)) (:foreground "#fbf8ef" :background "#ba2f59"))))
 '(lazy-highlight ((((class color) (min-colors 89)) (:background "#dae6d0" :weight normal))))
 '(link ((((class color) (min-colors 89)) (:foreground "#2aa1ae" :underline t))))
 '(link-visited ((((class color) (min-colors 89)) (:foreground "#6c4173" :underline t))))
 '(match ((((class color) (min-colors 89)) (:background "#d3d3e7" :foreground "#ba2f59"))))
 '(minibuffer-prompt ((((class color) (min-colors 89)) (:inherit bold :foreground "#3a81c3"))))
 '(page-break-lines ((((class color) (min-colors 89)) (:foreground "#d3d3e7"))))
 '(region ((((class color) (min-colors 89)) (:background "#d3d3e7"))))
 '(secondary-selection ((((class color) (min-colors 89)) (:background "#e3dedd"))))
 '(shadow ((((class color) (min-colors 89)) (:foreground "#a094a2"))))
 '(success ((((class color) (min-colors 89)) (:foreground "#42ae2c"))))
 '(tooltip ((((class color) (min-colors 89)) (:background "#c8c6dd" :foreground "#655370" :bold nil :italic nil :underline nil))))
 '(vertical-border ((((class color) (min-colors 89)) (:foreground "#b3b9be"))))
 '(warning ((((class color) (min-colors 89)) (:foreground "#dc752f"))))
 '(anzu-mode-line ((((class color) (min-colors 89)) (:foreground "#b1951d" :inherit bold))))
 '(avy-lead-face ((((class color) (min-colors 89)) (:background "#edf2e9" :foreground "#67b11d"))))
 '(avy-lead-face-0 ((((class color) (min-colors 89)) (:background "#edf2e9" :foreground "#b1951d"))))
 '(avy-lead-face-1 ((((class color) (min-colors 89)) (:background "#edf2e9" :foreground "#a31db1"))))
 '(avy-lead-face-2 ((((class color) (min-colors 89)) (:background "#edf2e9" :foreground "#3a81c3"))))
 '(company-echo-common ((((class color) (min-colors 89)) (:background "#655370" :foreground "#fbf8ef"))))
 '(company-preview ((((class color) (min-colors 89)) (:background "#e2e0ea" :foreground "#8c799f"))))
 '(company-preview-common ((((class color) (min-colors 89)) (:background "#e2e0ea" :foreground "#655370"))))
 '(company-preview-search ((((class color) (min-colors 89)) (:inherit match))))
 '(company-scrollbar-bg ((((class color) (min-colors 89)) (:background "#efeae9"))))
 '(company-scrollbar-fg ((((class color) (min-colors 89)) (:background "#d3d3e7"))))
 '(company-template-field ((((class color) (min-colors 89)) (:inherit region))))
 '(company-tooltip ((((class color) (min-colors 89)) (:background "#e2e0ea" :foreground "#8c799f"))))
 '(company-tooltip-annotation ((((class color) (min-colors 89)) (:foreground "#ba2f59"))))
 '(company-tooltip-common ((((class color) (min-colors 89)) (:background "#e2e0ea" :foreground "#3a81c3"))))
 '(company-tooltip-common-selection ((((class color) (min-colors 89)) (:foreground "#655370"))))
 '(company-tooltip-mouse ((((class color) (min-colors 89)) (:inherit highlight))))
 '(company-tooltip-search ((((class color) (min-colors 89)) (:inherit match))))
 '(company-tooltip-selection ((((class color) (min-colors 89)) (:background "#c8c6dd" :foreground "#655370"))))
 '(diff-added ((((class color) (min-colors 89)) :background nil :foreground "#67b11d")))
 '(diff-changed ((((class color) (min-colors 89)) :background nil :foreground "#3a81c3")))
 '(diff-header ((((class color) (min-colors 89)) :background "#ddd8eb" :foreground "#6c3163")))
 '(diff-file-header ((((class color) (min-colors 89)) :background "#ddd8eb" :foreground "#655370")))
 '(diff-indicator-added ((((class color) (min-colors 89)) :background nil :foreground "#67b11d")))
 '(diff-indicator-changed ((((class color) (min-colors 89)) :background nil :foreground "#3a81c3")))
 '(diff-indicator-removed ((((class color) (min-colors 89)) :background nil :foreground "#f2241f")))
 '(diff-refine-added ((((class color) (min-colors 89)) :background "#67b11d" :foreground "#d2ceda")))
 '(diff-refine-changed ((((class color) (min-colors 89)) :background "#3a81c3" :foreground "#d2ceda")))
 '(diff-refine-removed ((((class color) (min-colors 89)) :background "#f2241f" :foreground "#d2ceda")))
 '(diff-removed ((((class color) (min-colors 89)) :background nil :foreground "#f2241f")))
 '(diff-hl-change ((((class color) (min-colors 89)) :background "#edf1ed" :foreground "#3a81c3")))
 '(diff-hl-delete ((((class color) (min-colors 89)) :background "#faede4" :foreground "#f2241f")))
 '(diff-hl-insert ((((class color) (min-colors 89)) :background "#edf2e9" :foreground "#67b11d")))
 '(dired-directory ((((class color) (min-colors 89)) (:foreground "#3a81c3" :background "#fbf8ef" :inherit bold))))
 '(dired-flagged ((((class color) (min-colors 89)) (:foreground "#f2241f"))))
 '(dired-header ((((class color) (min-colors 89)) (:foreground "#6c4173" :inherit bold))))
 '(dired-ignored ((((class color) (min-colors 89)) (:inherit shadow))))
 '(dired-mark ((((class color) (min-colors 89)) (:foreground "#6c4173" :inherit bold))))
 '(dired-marked ((((class color) (min-colors 89)) (:foreground "#a31db1" :inherit bold))))
 '(dired-perm-write ((((class color) (min-colors 89)) (:foreground "#655370" :underline t))))
 '(dired-symlink ((((class color) (min-colors 89)) (:foreground "#21b8c7" :background "#fbf8ef" :inherit bold))))
 '(dired-warning ((((class color) (min-colors 89)) (:foreground "#dc752f"))))
 '(eldoc-highlight-function-argument ((((class color) (min-colors 89)) (:foreground "#ba2f59" :inherit bold))))
 '(flycheck-error ((((supports :underline (:style line)) (class color) (min-colors 89)) (:underline (:style line :color "#e0211d"))) (((class color) (min-colors 89)) (:foreground "#655370" :background "#e0211d" :inherit bold :underline t))))
 '(flycheck-error-list-checker-name ((((class color) (min-colors 89)) (:foreground "#3a81c3"))))
 '(flycheck-fringe-error ((((class color) (min-colors 89)) (:foreground "#e0211d" :inherit bold))))
 '(flycheck-fringe-info ((((class color) (min-colors 89)) (:foreground "#3a81c3" :inherit bold))))
 '(flycheck-fringe-warning ((((class color) (min-colors 89)) (:foreground "#dc752f" :inherit bold))))
 '(flycheck-info ((((supports :underline (:style line)) (class color) (min-colors 89)) (:underline (:style line :color "#3a81c3"))) (((class color) (min-colors 89)) (:foreground "#655370" :background "#3a81c3" :inherit bold :underline t))))
 '(flycheck-warning ((((supports :underline (:style line)) (class color) (min-colors 89)) (:underline (:style line :color "#dc752f"))) (((class color) (min-colors 89)) (:foreground "#655370" :background "#dc752f" :inherit bold :underline t))))
 '(flymake-error ((((supports :underline (:style line)) (class color) (min-colors 89)) (:underline (:style line :color "#e0211d"))) (((class color) (min-colors 89)) (:foreground "#655370" :background "#e0211d" :inherit bold :underline t))))
 '(flymake-note ((((supports :underline (:style line)) (class color) (min-colors 89)) (:underline (:style wave :color "#3a81c3"))) (((class color) (min-colors 89)) (:foreground "#655370" :background "#3a81c3" :inherit bold :underline t))))
 '(flymake-warning ((((supports :underline (:style line)) (class color) (min-colors 89)) (:underline (:style line :color "#dc752f"))) (((class color) (min-colors 89)) (:foreground "#655370" :background "#dc752f" :inherit bold :underline t))))
 '(gnus-summary-cancelled ((((class color) (min-colors 89)) (:background "#dc752f" :foreground "#fbf8ef"))))
 '(guide-key/highlight-command-face ((((class color) (min-colors 89)) (:foreground "#655370"))))
 '(guide-key/key-face ((((class color) (min-colors 89)) (:foreground "#3a81c3"))))
 '(guide-key/prefix-command-face ((((class color) (min-colors 89)) (:foreground "#3a81c3" :inherit bold))))
 '(helm-bookmark-directory ((((class color) (min-colors 89)) (:inherit helm-ff-directory))))
 '(helm-bookmark-file ((((class color) (min-colors 89)) (:foreground "#655370"))))
 '(helm-bookmark-gnus ((((class color) (min-colors 89)) (:foreground "#6c4173"))))
 '(helm-bookmark-info ((((class color) (min-colors 89)) (:foreground "#6c4173"))))
 '(helm-bookmark-man ((((class color) (min-colors 89)) (:foreground "#6c4173"))))
 '(helm-bookmark-w3m ((((class color) (min-colors 89)) (:foreground "#6c4173"))))
 '(helm-buffer-directory ((((class color) (min-colors 89)) (:foreground "#655370" :background "#fbf8ef"))))
 '(helm-buffer-file ((((class color) (min-colors 89)) (:foreground "#655370" :background "#fbf8ef"))))
 '(helm-buffer-not-saved ((((class color) (min-colors 89)) (:foreground "#6c4173" :background "#fbf8ef"))))
 '(helm-buffer-process ((((class color) (min-colors 89)) (:foreground "#3a81c3" :background "#fbf8ef"))))
 '(helm-buffer-saved-out ((((class color) (min-colors 89)) (:foreground "#655370" :background "#fbf8ef"))))
 '(helm-buffer-size ((((class color) (min-colors 89)) (:foreground "#655370" :background "#fbf8ef"))))
 '(helm-candidate-number ((((class color) (min-colors 89)) (:background "#fbf8ef" :foreground "#3a81c3" :inherit bold))))
 '(helm-ff-directory ((((class color) (min-colors 89)) (:foreground "#3a81c3" :background "#fbf8ef" :inherit bold))))
 '(helm-ff-dotted-directory ((((class color) (min-colors 89)) (:foreground "#3a81c3" :background "#fbf8ef" :inherit bold))))
 '(helm-ff-dotted-symlink-directory ((((class color) (min-colors 89)) (:foreground "#21b8c7" :background "#fbf8ef" :inherit bold))))
 '(helm-ff-executable ((((class color) (min-colors 89)) (:foreground "#42ae2c" :background "#fbf8ef" :weight normal))))
 '(helm-ff-file ((((class color) (min-colors 89)) (:foreground "#655370" :background "#fbf8ef" :weight normal))))
 '(helm-ff-invalid-symlink ((((class color) (min-colors 89)) (:foreground "#f2241f" :background "#fbf8ef" :inherit bold))))
 '(helm-ff-prefix ((((class color) (min-colors 89)) (:foreground "#fbf8ef" :background "#3a81c3" :weight normal))))
 '(helm-ff-symlink ((((class color) (min-colors 89)) (:foreground "#21b8c7" :background "#fbf8ef" :inherit bold))))
 '(helm-grep-cmd-line ((((class color) (min-colors 89)) (:foreground "#655370" :background "#fbf8ef"))))
 '(helm-grep-file ((((class color) (min-colors 89)) (:foreground "#655370" :background "#fbf8ef"))))
 '(helm-grep-finish ((((class color) (min-colors 89)) (:foreground "#655370" :background "#fbf8ef"))))
 '(helm-grep-lineno ((((class color) (min-colors 89)) (:foreground "#ba2f59" :background "#fbf8ef" :inherit bold))))
 '(helm-grep-match ((((class color) (min-colors 89)) (:foreground nil :background nil :inherit helm-match))))
 '(helm-header ((((class color) (min-colors 89)) (:foreground "#655370" :background "#fbf8ef" :underline nil :box nil))))
 '(helm-header-line-left-margin ((((class color) (min-colors 89)) (:foreground "#3a81c3" :background nil))))
 '(helm-match ((((class color) (min-colors 89)) (:background "#edf1ed" :foreground "#3a81c3"))))
 '(helm-match-item ((((class color) (min-colors 89)) (:background "#edf1ed" :foreground "#3a81c3"))))
 '(helm-moccur-buffer ((((class color) (min-colors 89)) (:foreground "#715ab1" :background "#fbf8ef"))))
 '(helm-selection ((((class color) (min-colors 89)) (:background "#d3d3e7"))))
 '(helm-selection-line ((((class color) (min-colors 89)) (:background "#efeae9"))))
 '(helm-separator ((((class color) (min-colors 89)) (:foreground "#6c4173" :background "#fbf8ef"))))
 '(helm-source-header ((((class color) (min-colors 89)) (:background "#6c4173" :foreground "#fbf8ef" :inherit bold))))
 '(helm-visible-mark ((((class color) (min-colors 89)) (:foreground "#3a81c3" :background "#e3dedd"))))
 '(highlight-indentation-face ((((class color) (min-colors 89)) (:background "#ecf3ec"))))
 '(ido-first-match ((((class color) (min-colors 89)) (:foreground "#6c4173" :inherit bold))))
 '(ido-only-match ((((class color) (min-colors 89)) (:foreground "#ba2f59" :inherit bold))))
 '(ido-subdir ((((class color) (min-colors 89)) (:foreground "#3a81c3"))))
 '(info-header-xref ((((class color) (min-colors 89)) (:foreground "#6c3163" :underline t))))
 '(info-node ((((class color) (min-colors 89)) (:foreground "#6c3163" :inherit bold))))
 '(info-title-1 ((((class color) (min-colors 89)) (:height 1.4 :inherit bold))))
 '(info-title-2 ((((class color) (min-colors 89)) (:height 1.3 :inherit bold))))
 '(info-title-3 ((((class color) (min-colors 89)) (:height 1.3))))
 '(info-title-4 ((((class color) (min-colors 89)) (:height 1.2))))
 '(ivy-current-match ((((class color) (min-colors 89)) (:background "#d3d3e7" :inherit bold))))
 '(ivy-minibuffer-match-face-1 ((((class color) (min-colors 89)) (:inherit bold))))
 '(ivy-minibuffer-match-face-2 ((((class color) (min-colors 89)) (:foreground "#3a81c3" :underline t))))
 '(ivy-minibuffer-match-face-3 ((((class color) (min-colors 89)) (:foreground "#b1951d" :underline t))))
 '(ivy-minibuffer-match-face-4 ((((class color) (min-colors 89)) (:foreground "#67b11d" :underline t))))
 '(ivy-remote ((((class color) (min-colors 89)) (:foreground "#21b8c7"))))
 '(line-number-current-line ((((class color) (min-colors 89)) (:foreground "#655370" :background "#efeae9"))))
 '(mode-line ((((class color) (min-colors 89)) (:foreground "#655370" :background "#e7e5eb" :box (:color "#b3b9be" :line-width 1)))))
 '(mode-line-buffer-id ((((class color) (min-colors 89)) (:inherit bold :foreground "#6c3163"))))
 '(mode-line-inactive ((((class color) (min-colors 89)) (:foreground "#655370" :background "#fbf8ef" :box (:color "#b3b9be" :line-width 1)))))
 '(neo-dir-link-face ((((class color) (min-colors 89)) (:foreground "#3a81c3" :inherit bold))))
 '(neo-expand-btn-face ((((class color) (min-colors 89)) (:foreground "#655370"))))
 '(neo-file-link-face ((((class color) (min-colors 89)) (:foreground "#655370"))))
 '(neo-root-dir-face ((((class color) (min-colors 89)) (:foreground "#6c3163" :inherit bold))))
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
 '(powerline-active1 ((((class color) (min-colors 89)) (:background "#d3d3e7" :foreground "#655370"))))
 '(powerline-active2 ((((class color) (min-colors 89)) (:background "#d3d3e7" :foreground "#655370"))))
 '(powerline-inactive1 ((((class color) (min-colors 89)) (:background "#efeae9" :foreground "#655370"))))
 '(powerline-inactive2 ((((class color) (min-colors 89)) (:background "#efeae9" :foreground "#655370"))))
 '(rainbow-delimiters-depth-1-face ((((class color) (min-colors 89)) :foreground "#3a81c3")))
 '(rainbow-delimiters-depth-2-face ((((class color) (min-colors 89)) :foreground "#6c3163")))
 '(rainbow-delimiters-depth-3-face ((((class color) (min-colors 89)) :foreground "#2d9574")))
 '(rainbow-delimiters-depth-4-face ((((class color) (min-colors 89)) :foreground "#67b11d")))
 '(rainbow-delimiters-depth-5-face ((((class color) (min-colors 89)) :foreground "#b1951d")))
 '(rainbow-delimiters-depth-6-face ((((class color) (min-colors 89)) :foreground "#3a81c3")))
 '(rainbow-delimiters-depth-7-face ((((class color) (min-colors 89)) :foreground "#6c3163")))
 '(rainbow-delimiters-depth-8-face ((((class color) (min-colors 89)) :foreground "#2d9574")))
 '(rainbow-delimiters-mismatched-face ((((class color) (min-colors 89)) :foreground "#e0211d" :overline t)))
 '(rainbow-delimiters-unmatched-face ((((class color) (min-colors 89)) :foreground "#e0211d" :overline t)))
 '(show-paren-match ((((class color) (min-colors 89)) (:foreground "#ba2f59" :inherit bold :underline t))))
 '(show-paren-match-expression ((((class color) (min-colors 89)) (:background "#dae6d0"))))
 '(show-paren-mismatch ((((class color) (min-colors 89)) (:foreground "#e0211d" :inherit bold :underline t))))
 '(spaceline-flycheck-error ((((class color) (min-colors 89)) (:foreground "#e0211d"))))
 '(spaceline-flycheck-info ((((class color) (min-colors 89)) (:foreground "#3a81c3"))))
 '(spaceline-flycheck-warning ((((class color) (min-colors 89)) (:foreground "#dc752f"))))
 '(spaceline-python-venv ((((class color) (min-colors 89)) (:foreground "#6c4173"))))
 '(swiper-line-face ((((class color) (min-colors 89)) (:background "#d3d3e7" :inherit bold))))
 '(swiper-match-face-1 ((((class color) (min-colors 89)) (:inherit bold))))
 '(swiper-match-face-2 ((((class color) (min-colors 89)) (:foreground "#3a81c3" :underline t))))
 '(swiper-match-face-3 ((((class color) (min-colors 89)) (:foreground "#b1951d" :underline t))))
 '(swiper-match-face-4 ((((class color) (min-colors 89)) (:foreground "#67b11d" :underline t))))
 '(whitespace-empty ((((class color) (min-colors 89)) (:background nil :foreground "#b1951d"))))
 '(whitespace-indentation ((((class color) (min-colors 89)) (:background nil :foreground "#dc752f"))))
 '(whitespace-line ((((class color) (min-colors 89)) (:background nil :foreground "#6c4173"))))
 '(whitespace-newline ((((class color) (min-colors 89)) (:background nil :foreground "#6c4173"))))
 '(whitespace-space ((((class color) (min-colors 89)) (:background nil :foreground "#d3d3e7"))))
 '(whitespace-space-after-tab ((((class color) (min-colors 89)) (:background nil :foreground "#b1951d"))))
 '(whitespace-space-before-tab ((((class color) (min-colors 89)) (:background nil :foreground "#b1951d"))))
 '(whitespace-tab ((((class color) (min-colors 89)) (:background nil :foreground "#d3d3e7"))))
 '(whitespace-trailing ((((class color) (min-colors 89)) (:background "#e0211d" :foreground "#dc752f"))))
 '(ffap ((((class color) (min-colors 89)) (:foreground "#655370"))))
 '(flx-highlight-face ((((class color) (min-colors 89)) (:foreground "#6c4173" :underline nil))))
 '(trailing-whitespace ((((class color) (min-colors 89)) :foreground nil :background "#e0211d")))
 '(undo-tree-visualizer-current-face ((((class color) (min-colors 89)) :foreground "#3a81c3")))
 '(undo-tree-visualizer-default-face ((((class color) (min-colors 89)) :foreground "#655370")))
 '(undo-tree-visualizer-register-face ((((class color) (min-colors 89)) :foreground "#6c4173")))
 '(undo-tree-visualizer-unmodified-face ((((class color) (min-colors 89)) :foreground "#715ab1")))
 '(default ((((class color) (min-colors 89)) (:foreground "#333333" :background "#FFFFFF")))))

(provide 'iris-theme)
