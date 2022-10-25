;; 设置字体
(set-frame-font "FiraCode Nerd Font 13")

;; 设置主题
(pkginstall 'dracula-theme)
(load-theme 'dracula)
; (if (display-grayscale-p)
; 	(load-theme 'dracula))

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

(setq default-frame-alist '((width . 80)
                              (height . 30)
                              (alpha-background . 80)))

;; 对外提供接口
(provide 'init-ui)
