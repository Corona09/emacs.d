;; 设置字体
(set-frame-font "FiraCode Nerd Font 13")

;; 设置主题
(pkginstall 'gruvbox-theme)
(if (display-grayscale-p)
	(load-theme 'gruvbox-dark-soft t))

;; 一个好看的mode-line
;; 必须放在主题配置之后
(pkginstall 'smart-mode-line)
(setq sml/no-confirm-load-theme t
	  sml/theme 'respectful)
(sml/setup)

(setq-default inhibit-startup-screen t)
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)
(setq initial-scratch-message "")

;; 对外提供接口
(provide 'init-ui)
