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
