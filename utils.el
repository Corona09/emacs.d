;; 安装插件包
(defun pkginstall (pkgname)
  "Package Install"
  (unless (package-installed-p pkgname)
	(package-refresh-contents)
	(package-install pkgname)))

