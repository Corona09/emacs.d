;;; init.el --- 配置文件入口
;;; Commentary: 
;;; Code:
(load "~/.emacs.d/utils.el")
(mapc 'load (file-expand-wildcards "~/.emacs.d/lisp/init-*.el"))
(mapc 'load (file-expand-wildcards "~/.emacs.d/lisp/pkg/*.el"))
(setq default-frame-alist '((alpha-background . 80)))
