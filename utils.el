;; 安装插件包
(defun pkginstall (pkgname)
  "Package Install"
  (unless (package-installed-p pkgname)
	(package-refresh-contents)
	(package-install pkgname)))

(defun testfunc (arg)
  "Test Functions"
  (message "Hello World"))
