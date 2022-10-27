;; 历史树
(pkginstall 'undo-tree)
(global-undo-tree-mode)
(setq undo-tree-history-directory-alist '(("." . "~/.emacs.d/undo")))
(defun undo-tree-clear-history-files ()
  "Clear undo-tree auto generated history files"
  (interactive)
  (shell-command-to-string "trash-put ~/.emacs.d/undo/.*"))

(defun undo-tree-history-files-size ()
  "Get size of undo-tree history files"
  (interactive)
  (let ((ut-file-size (shell-command-to-string "/usr/bin/du -h ~/.emacs.d/undo | awk '{print $1}'")))
    (message "Size of undo-tree history files: %s" ut-file-size)))

;; (setq undo-tree-auto-save-history nil)
