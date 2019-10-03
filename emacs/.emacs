(add-to-list 'default-frame-alist '(font . "Liberation Mono-8"))
(set-face-attribute 'default t :font "Liberation Mono-8")
;(set-face-attribute 'default nil :font "Liberation Mono-8")
;(set-frame-font FONT nil t)

(setq-default
  indent-tabs-mode nil

  require-final-newline t

  fill-column 80

  display-line-numbers 'relative
  display-line-numbers-current-absolute t

  buffer-file-coding-system 'utf-8

  disabled-command-function nil

  make-backup-files nil

  inhibit-startup-screen t

  sentence-end-double-space nil
)

(menu-bar-mode 0)
(tool-bar-mode 0)

(set-language-environment 'utf-8)
(set-default-coding-systems 'utf-8)
(set-selection-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(global-auto-revert-mode t)
(show-paren-mode t)
(electric-pair-mode t)

(require 'package)

(setq package-archives '(("org" . "http://orgmode.org/elpa/")
			 ("melpa" . "http://melpa.org/packages/")
			 ("gnu" . "http://elpa.gnu.org/packages/")))

(setq package-enable-at-startup nil)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)
(require 'use-package-ensure)
(setq use-package-always-ensure t)
(setq use-package-compute-statistics t)

(use-package auto-package-update
  :config
  (setq auto-package-update-delete-old-versions t
	auto-package-update-interval 1
	auto-package-update-prompt-before-update t)
  (auto-package-update-maybe))

(use-package evil
  :init
  (setq evil-want-keybinding nil
	evil-want-integration t)
  :config
  (evil-mode 1))

(use-package company
  :config
  (global-company-mode 1))

(use-package flycheck
  :config
  (global-flycheck-mode))

(use-package smex
  :config
  (smex-initialize))

(use-package ivy
  :init
  (setq ivy-use-virtual-buffers t)
  :config
  (ivy-mode 1))

(use-package counsel
  )

(use-package swiper
  )

(use-package projectile
  :config
  (projectile-mode 1))

(use-package counsel-projectile
  )

(use-package lsp-mode)

(use-package company-lsp
  :config
  (push 'company-lsp company-backends))

(use-package rustic
  :init
  (setq rustic-lsp-server 'rust-analyzer))
  ;(require 'ra-emacs-lsp))

(use-package evil-collection
  :after '(evil ivy)
  :config
  (evil-collection-init))

(use-package which-key)

(use-package general
  :config
  (general-define-key
   "M-x" #'counsel-M-x
   "C-x C-f" #'counsel-find-file
   "<f2> u" #'counsel-unicode-char
   "C-h v" #'counsel-describe-variable
   "C-h f" #'counsel-describe-function)
  (general-define-key
   :states '(insert)
   "C-SPC" #'company-complete)
  (general-define-key
   :states '(normal visual emacs)
   :prefix "SPC"
   "pp" #'counsel-projectile-switch-project
   "pf" #'counsel-projectile-find-file
   "pd" #'counsel-projectile-find-dir
   "pg" #'counsel-projectile-rg
   "ro" #'rustic-cargo-outdated
   "rr" #'rustic-popup
   "b" #'ivy-switch-buffer
   "fr" #'counsel-recentf
   "ff" #'counsel-find-file))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(image-scaling-factor 1.0)
 '(package-selected-packages
   (quote
    (general counsel ivy evil-collection use-package evil auto-package-update))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
