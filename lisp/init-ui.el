;; 设置字体
(set-frame-font "Mononoki Nerd Font 12")

;; 设置主题
(pkginstall 'dracula-theme)
(pkginstall 'gruvbox-theme)
(if (display-grayscale-p)
	(load-theme 'gruvbox-dark-hard)
    (load-theme 'dracula))

;; 高亮当前行
(global-hl-line-mode 1)

;; 一个好看的 mode-line, 必须放在主题配置之后
(pkginstall 'smart-mode-line)
(setq sml/no-confirm-load-theme t
	  sml/theme 'respectful)
(sml/setup)

;; 默认启动打开空窗口
(setq-default inhibit-startup-screen t)
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

;; 透明背景
(setq default-frame-alist '((alpha-background . 80)))

(provide 'init-ui)
