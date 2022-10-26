(pkginstall 'company)
(if (not (display-grayscale-p))
	(add-hook 'after-init-hook 'global-company-mode))
