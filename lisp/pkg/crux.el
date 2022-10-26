;; 常用操作优化
(pkginstall 'crux)
(global-set-key (kbd "C-a")   'crux-move-beginning-of-line)
(global-set-key (kbd "C-c j") 'crux-top-join-line)
(global-set-key (kbd "C-c u") 'crux-find-user-init-file)
(global-set-key (kbd "C-c k") 'crux-smart-kill-line)
