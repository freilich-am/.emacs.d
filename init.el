;; I suspect more of this file can be moved to myinit.org
;; The last time I tried I think I broke my local emacs
;; so most of it moved, but what's here stays

(setq inhibit-startup-message t)
(tool-bar-mode -1) 

(fset 'yes-or-no-p 'y-or-n-p)
(cd "~")

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	          '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package try
	     :ensure t)

(defalias 'list-buffers 'ibuffer)

(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (exec-path-from-shell ag magit-gitflow zenburn-theme use-package try org-bullets neotree melpa-upstream-visit magit helm-spotify heap haskell-mode auto-complete auctex alect-themes))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
