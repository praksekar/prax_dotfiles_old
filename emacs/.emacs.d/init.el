(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("b89ae2d35d2e18e4286c8be8aaecb41022c1a306070f64a66fd114310ade88aa" default)))
 '(inhibit-startup-screen t)
 '(package-selected-packages (quote (gruvbox-theme ace-window auto-complete evil)))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Inconsolata" :foundry "PfEd" :slant normal :weight normal :height 120 :width normal)))))

;; ------------------------------------------------------------------------------------------


;; set font
;; (set-frame-font "ADBO-Source Code Pro-normal-normal-normal" nil t)

;; Write backups to ~/.emacs.d/backup/
(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
      backup-by-copying      t  ; Don't de-link hard links
      version-control        t  ; Use version numbers on backups
      delete-old-versions    t  ; Automatically delete excess backups:
      kept-new-versions      20 ; how many of the newest versions to keep
      kept-old-versions      5) ; and how many of the old

;; add melpa to package list
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; install packages on new machines
(setq package-selected-packages
      '(ace-window
        auto-complete
	avy
	evil-collection
	annalist
	evil
	goto-chg
	gruvbox-theme
	autothemer
	dash
	popup
	undo-tree))
(package-install-selected-packages)

;; gruvbox
(require 'gruvbox)
(load-theme 'gruvbox t)

;; neotree
(add-to-list 'load-path "~/.emacs.d/plugins/neotree")
(require 'neotree)
(global-set-key [f2] 'neotree-toggle)
(setq neo-smart-open t)
;; get neotree to work with evil
(add-hook 'neotree-mode-hook
	    (lambda ()
	    (define-key evil-normal-state-local-map (kbd "TAB") 'neotree-enter)
	    (define-key evil-normal-state-local-map (kbd "SPC") 'neotree-quick-look)
	    (define-key evil-normal-state-local-map (kbd "q") 'neotree-hide)
	    (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)
	    (define-key evil-normal-state-local-map (kbd "g") 'neotree-refresh)
	    (define-key evil-normal-state-local-map (kbd "n") 'neotree-next-line)
	    (define-key evil-normal-state-local-map (kbd "p") 'neotree-previous-line)
	    (define-key evil-normal-state-local-map (kbd "A") 'neotree-stretch-toggle)
	    (define-key evil-normal-state-local-map (kbd "H") 'neotree-hidden-file-toggle)))
(setq-default neo-show-hidden-files t)

;; evil 
(require 'evil)
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
    (evil-define-key 'normal package-menu-mode-map (kbd "x") #'package-menu-execute)))

;; ace-window
(require 'ace-window) 
(global-set-key (kbd "M-o") 'ace-window)


;; autocomplete
(ac-config-default)
(global-auto-complete-mode t)
(setq ac-auto-show-menu    0.2)
(setq ac-delay             0.2)
(setq ac-menu-height       20)
(setq ac-auto-start t)
(setq ac-show-menu-immediately-on-auto-complete t)

;; disable menubar, scrollbar, toolbar
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

;; super behave like meta
(setq-default x-super-keysym 'meta)

;; relative line numbers
(setq-default display-line-numbers 'relative)

;; undo-tree
(require 'undo-tree)
(global-undo-tree-mode)


