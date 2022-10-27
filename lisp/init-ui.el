;; 设置字体
(set-frame-font "Mononoki Nerd Font 13")

;; 设置主题
(pkginstall 'dracula-theme)
(pkginstall 'gruvbox-theme)
(if (display-grayscale-p)
	(load-theme 'gruvbox-dark-hard)
    (load-theme 'dracula))
(global-hl-line-mode 1)

;; 一个好看的mode-line
;; 必须放在主题配置之后
(pkginstall 'smart-mode-line)
(setq sml/no-confirm-load-theme t
	  sml/theme 'respectful)
(sml/setup)

;; 默认启动打开空窗口
(setq-default inhibit-startup-screen t)
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)
(setq initial-scratch-message "")

;; 透明背景
(setq default-frame-alist '((alpha-background . 80)))

;; 对外提供接口
(provide 'init-ui)
