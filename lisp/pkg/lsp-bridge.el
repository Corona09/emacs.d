;; lsp-bridge 依赖 : posframe
(pkginstall 'posframe)

;; lsp-bridge 依赖 : markdown-mode
(pkginstall 'markdown-mode)
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist
             '("\\.\\(?:md\\|markdown\\|mkd\\|mdown\\|mkdn\\|mdwn\\)\\'" . markdown-mode))
(autoload 'gfm-mode "markdown-mode"
   "Major mode for editing GitHub Flavored Markdown files" t)
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; lsp-bridge 依赖 : yasnippet
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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 加载 lsp-bridge
(add-to-list 'load-path "~/.emacs.d/site-lisp/lsp-bridge")
(require 'lsp-bridge)
(global-lsp-bridge-mode)
