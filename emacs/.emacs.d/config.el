(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(add-to-list 'default-frame-alist
                 '(font . "Ubuntu Mono-12"))

(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
backup-by-copying      t  ; Don't de-link hard links
version-control        t  ; Use version numbers on backups
delete-old-versions    t  ; Automatically delete excess backups:
kept-new-versions      20 ; how many of the newest versions to keep
kept-old-versions      5) ; and how many of the old

(use-package evil
    :config
    (evil-mode 1)
    ;; evil to work with list-packages
    (with-eval-after-load 'evil
    ;; use evil mode in the buffer created from calling `list-packages'.
    (add-to-list 'evil-buffer-regexps '("*Packages*" . normal))
    (with-eval-after-load 'package
    ;; movement keys j,k,l,h set up for free by defaulting to normal mode.
    ;; mark, unmark, install
    (evil-define-key 'normal package-menu-mode-map (kbd "m") #'package-menu-mark-install)
    (evil-define-key 'normal package-menu-mode-map (kbd "u") #'package-menu-mark-unmark)
    (evil-define-key 'normal package-menu-mode-map (kbd "x") #'package-menu-execute))))

(use-package ace-window
    :bind ("M-o" . ace-window))
(global-set-key (kbd "M-o") 'ace-window)

(setq-default display-line-numbers 'relative)

(setq-default x-super-keysym 'meta)

(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(setq inhibit-startup-screen t)

;;(use-package gruvbox
 ;;   :config
  ;;  (load-theme 'gruvbox t))
  (use-package modus-vivendi-theme :ensure)

(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "chromium-browser")

(use-package company)
(use-package company-quickhelp 
  :config
  (global-company-mode)
  (company-quickhelp-mode)
  (add-to-list 'company-backends 'company-files)
  (setq company-quickhelp-delay 0.1))

(use-package company-anaconda
  :after (anaconda-mode company)
  :config (add-to-list 'company-backends 'company-anaconda))

(use-package company-shell 
  :after (company)
  :config (add-to-list 'company-backends 'company-shell))

(use-package flycheck-pos-tip
:config
  (global-flycheck-mode)
  (with-eval-after-load 'flycheck
      (flycheck-pos-tip-mode)))

(setq python-shell-interpreter "/usr/bin/python3")

(setq lsp-keymap-prefix "s-l")

(require 'lsp-mode)
(add-hook 'prog-mode-hook #'lsp)

(require 'lsp-java)
(add-hook 'java-mode-hook #'lsp)

(use-package lsp-ui)

(use-package lsp-mode
 :commands lsp
 :hook
 (sh-mode . lsp))

(setq lsp-ui-doc-enable t)
(use-package company-box
  :hook (company-mode . company-box-mode))

(use-package org-bullets
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))
