;; Это база

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)

(eval-when-compile
  (require 'use-package))

(use-package color-theme-sanityinc-tomorrow 
  :ensure t)

(load-theme 'sanityinc-tomorrow-eighties t)

(use-package xclip
  :ensure t)

;; nerd-icons-install-fonts
(use-package nerd-icons
;;  :custom
  ;; The Nerd Font you want to use in GUI
  ;; "Symbols Nerd Font Mono" is the default and is recommended
  ;; but you can use any other Nerd Font if you want
;;  (nerd-icons-font-family "Symbols Nerd Font Mono")
  )

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))

;; https://github.com/snackon/Witchmacs/blob/014265cd20af7ae297b29034742df06dcd31c17b/marivector.png
(use-package dashboard
  :ensure t
  :defer nil
  :config
  (dashboard-setup-startup-hook)
  ;;(setq dashboard-startup-banner 'logo)
  (setq dashboard-startup-banner "~/.emacs.d/marivector.png")
  (setq dashboard-center-content t)
  )

;; git
(use-package magit
  :ensure t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("04aa1c3ccaee1cc2b93b246c6fbcd597f7e6832a97aaeac7e5891e6863236f9f" default))
 '(package-selected-packages
   '(yaml-mode dashboard doom-modeline xclip use-package magit color-theme-sanityinc-tomorrow)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; IDE

(use-package yaml-mode
  :ensure t)
