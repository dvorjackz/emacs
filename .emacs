(setq inhibit-startup-message t)

(scroll-bar-mode -1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)

(load-theme 'tango-dark)

;; <escape> does c-g too
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)

(windmove-default-keybindings)

;; -------------- PACKAGES --------------

(require 'package) ;; Emacs builtin
 
;; set package.el repositories
(setq package-archives
'(
   ("org" . "https://orgmode.org/elpa/")
   ("elpa" . "https://elpa.gnu.org/packages/")
   ("melpa" . "https://melpa.org/packages/")
))

;; initialize built-in package management
(package-initialize)

;; update packages list if we are on a new install
(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(use-package magit)
(use-package ivy
  :config
  (ivy-mode 1))
(use-package swiper)
