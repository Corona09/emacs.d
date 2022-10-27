(pkginstall 'company)

(when (not (display-grayscale-p))
	(require 'company)
	(add-hook 'after-init-hook 'global-company-mode)
	(setq company-dabbrev-code-everywhere   t
		company-dabbrev-code-modes          t
		company-dabbrev-code-other-buffers 'all
		company-dabbrev-downcase            nil
		company-dabbrev-ignore-case         t
		company-dabbrev-other-buffers      'all
		company-require-match               nil
		company-minimum-prefix-length       1
		company-show-numbers                t
		company-tooltip-limit               20
		company-idle-delay                  0
		company-echo-delay                  0
		company-tooltip-offset-display     'scrollbar
		company-begin-commands             '(self-insert-command)))
