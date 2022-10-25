;; ivy
(pkginstall 'ivy)
(ivy-mode 1)
(setq ivy-use-virtual-buffers nil
	  ivy-initial-inputs-alist nil
	  ivy-count-format "%d/%d "
	  ivy-re-builders-alist '((t . ivy--regex-ignore-order))
	  enable-recursive-minibuffers t)

;; swiper
(pkginstall 'swiper)
(setq swiper-action-recenter t
      swiper-include-line-number-in-search t)
(global-set-key (kbd "C-s") 'swiper)
(global-set-key (kbd "C-r") 'swiper-isearch-backend)

;; counsel
(pkginstall 'counsel)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-c f") 'counsel-recentf)
(global-set-key (kbd "C-c g") 'counsel-git)
