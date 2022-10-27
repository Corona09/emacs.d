;; 安装插件包
(defun pkginstall (pkgname)
  "Install Package"
  (unless (package-installed-p pkgname)
	(package-refresh-contents)
	(package-install pkgname)))

(defun append-to-file (content fpath)
  "Append CONTENT to file whose path is FPATH"
  (write-region content nil fpath 'append))
