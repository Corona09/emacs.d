;; 彩虹括号
(pkginstall 'rainbow-delimiters)
(add-hook 'foo-mode-hook #'rainbow-delimiters-mode)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
(show-paren-mode t) ;; 高亮匹配括号

