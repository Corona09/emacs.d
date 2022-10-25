;; 常用操作优化
(pkginstall 'crux)
(global-set-key (kbd "C-a")   'crux-move-beginning-of-line)
(global-set-key (kbd "C-c ^") 'crux-top-join-line)
(global-set-key (kbd "C-x ,") 'crux-find-user-init-file)
(global-set-key (kbd "C-k")   'crux-smart-kill-line)

