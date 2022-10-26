(pkginstall 'company)
(add-hook 'after-init-hook 'global-company-mode)
; (add-hook 'after-init-hook 'company-tng-mode)

;(eval-after-load 'company
;  '(progn
;	 (define-key company-active-map (kbd "TAB") 'company-select-next)
;	 (define-key company-active-map (kbd "<backtab>") 'company-select-previous)
;	 ))

(eval-after-load 'company
  '(progn
     (define-key company-active-map (kbd "TAB")   'company-select-next)
     (define-key company-active-map [tab]         'company-select-next)
	 (define-key company-active-map (kbd "S-TAB") 'company-select-previous)
	 (define-key company-active-map [backtab]     'company-select-previous)))
