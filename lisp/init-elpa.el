;;; init-elpa.el --- melpa库
;;; Commentary:

;;; Code:
(setq package-archives '(("gnu-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/"  )
						 ("melpa-cn" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
						 ("org-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/"  )))
(setq package-signature nil)
(require 'package)
;; 初始化包管理器
(unless (bound-and-true-p package--initialized) (package-initialize))
;; 刷新软件源索引
(unless package-archive-contents (package-refresh-contents))
;; 刷新软件源索引
(unless package-archive-contents (package-refresh-contents))
(provide 'init-elpa)
;;; init-elpa.el ends here

