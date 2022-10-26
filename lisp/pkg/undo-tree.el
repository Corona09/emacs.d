;; 历史树
(pkginstall 'undo-tree)
(global-undo-tree-mode)
(setq undo-tree-history-directory-alist '(("." . "~/.emacs.d/undo")))
;; (setq undo-tree-auto-save-history nil)
