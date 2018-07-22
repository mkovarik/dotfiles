;; Package Management
(package-initialize)
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)
(use-package auto-compile
  :ensure
  :config (auto-compile-on-load-mode))
(setq load-prefer-newer t)

;; Python
;; pipenv install jedi rope flake8
(use-package elpy
  :ensure
  :init (elpy-enable))

;; Backups
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))

;; Vim Emulation
(use-package evil
  :ensure
  :init (evil-mode 1))
(use-package powerline-evil
  :ensure)

;; Visuals
;; Works greate with 'Ant-Dracula' gtk theme.
(scroll-bar-mode -1)
(tool-bar-mode   -1)
(tooltip-mode    -1)
(menu-bar-mode   -1)
(use-package doom-themes
  :ensure
  :init (load-theme 'doom-dracula t))
(setq frame-title-format "")
(set-background-color "#1e1f29")
;;(set-frame-parameter nil 'alpha '(95 . 95))
;;(add-to-list 'default-frame-alist '(alpha . (95 . 95)))
(add-to-list 'default-frame-alist '(font . "mononoki-14"))
(use-package powerline
  :ensure
  :init (powerline-center-evil-theme))
(column-number-mode 1)
(global-linum-mode t)

;; Misc
(setq custom-file "~/.emacs.d/custom.el")
(setq inhibit-startup-message t)
