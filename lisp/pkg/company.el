; (pkginstall 'company)
; (add-hook 'after-init-hook 'global-company-mode)
; 
; ;; lsp-mode
; (pkginstall 'lsp-mode)
; (pkginstall 'lsp-ui)
; (add-hook 'after-init-hook 'lsp)
; (add-hook 'python-mode 'lsp-deferred)
; (add-hook 'c-mode      'lsp-deferred)
; (add-hook 'c++-mode    'lsp-deferred)
; 
; ;; yasnippet
; (pkginstall 'yasnippet)
; (pkginstall 'yasnippet-snippets)
; 
; (yas-global-mode 1)
; (define-key yas-minor-mode-map "\C-j" 'yas-expand)
; (define-key yas-minor-mode-map "\C-k" 'yas-prev-field)
; (define-key yas-keymap "\C-j" 'yas-next-field-or-maybe-expand)
; (define-key yas-keymap "\C-k" 'yas-prev-field)
; 
; (dolist (keymap (list yas-minor-mode-map yas-keymap))
;   (define-key keymap (kbd "TAB") 'nil)
;   (define-key keymap [(tab)] 'nil))
; 
