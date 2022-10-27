;;; Code:
;; 显示行号
(global-display-line-numbers-mode t)
(setq-default display-line-numbers-width-start t)

;; 设置tab宽度
(setq-default tab-width 4)
(setq-default c-basic-offset 4)

;; 设置垃圾回收的阈值，加快起动速度
(setq gc-cons-threshold most-positive-fixnum)

;; 不产生*~文件
(setq make-backup-files nil)

;; 不创建锁文件
(setq create-lockfiles nil)

;; 移除菜单栏
(menu-bar-mode -1)

;; 关闭工具栏
(tool-bar-mode -1)

;; 关闭滚动条
(scroll-bar-mode -1)

;; 自动加载文件
(global-auto-revert-mode t)

;; 避免系统乱码
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq default-buffer-coding-system 'utf-8)

;; 设置slime
(setq inferior-lisp-program "/usr/bin/sbcl")
(add-to-list 'load-path "/opt/local/slime/")
(require 'slime)
(slime-setup '(slime-fancy))

;;;;;;;;;;;;;* 括号补全 * ;;;;;;;;;;;;;;;;;;;;;;;
;; 设置自动补全括号
(electric-pair-mode 1)
(setq electric-pair-pairs
      '( (?\{ . ?\}) ;; 添加大括号补全
		 (?\[ . ?\]) ;; 添加中括号补全
		 (?\( . ?\)) ;; 添加小括号补全
	   ))

;; 为custom-set指定文件
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
;; 加载custom配置文件
(when (file-exists-p custom-file) (load-file custom-file))

(provide 'init-startup)
