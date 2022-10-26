(pkginstall 'yasnippet)
(yas-global-mode 1)

(pkginstall 'yasnippet-snippets)

(define-key yas-minor-mode-map "\C-j" 'yas-expand)
(define-key yas-minor-mode-map "\C-k" 'yas-prev-field)
(define-key yas-keymap "\C-j" 'yas-next-field-or-maybe-expand)
(define-key yas-keymap "\C-k" 'yas-prev-field)

(dolist (keymap (list yas-minor-mode-map yas-keymap))
  (define-key keymap (kbd "TAB") 'nil)
  (define-key keymap [(tab)] 'nil))

