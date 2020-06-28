(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (wombat)))
 '(inhibit-default-init t)
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (auto-complete company-anaconda company-quickhelp flycheck-pos-tip flycheck company use-package evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
; list the packages you want
(setq package-list '(evil helm-company company-quickhelp company-anaconda flycheck flycheck-pos-tip auto-complete))

; list the repositories containing them
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

; activate all the packages (in particular autoloads)
(package-initialize)

; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

;; use-package initialization
;; This is only needed once, near the top of the file
(eval-when-compile
  ;; Following line is not needed if use-package.el is in ~/.emacs.d
  ;; (add-to-list 'load-path "<path where use-package is installed>")
  (require 'use-package))

;;-------------------------PACKAGES---------------------------------------------------------------------------------------------

;; evil
(use-package evil)
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

;; company, company-quickhelp, company-anaconda
;;(use-package company
 ;; :init
  ;;'global-company-mode
  ;;)
(add-hook 'after-init-hook 'global-company-mode)
(company-quickhelp-mode)
;;(eval-after-load "company"
;;'(add-to-list 'company-backends 'company-anaconda))
;;(add-hook 'python-mode-hook 'anaconda-mode)

;; flycheck and flycheck-pos-tip
(global-flycheck-mode)
(with-eval-after-load 'flycheck
  (flycheck-pos-tip-mode))
(flycheck-add-next-checker 'python-flake8 'python-pylint)
;; autocomplete
;;(ac-config-default)
;;(setq ac-show-menu-immediately-on-auto-complete t)
(eval-after-load 'company
  '(progn
     (define-key company-mode-map (kbd "C-:") 'helm-company)
     (define-key company-active-map (kbd "C-:") 'helm-company)))















;;-------------------------other settings--------------------------------------------------------

;; super behave like meta
(setq-default x-super-keysym 'meta)

;; relative line numbers
(setq-default display-line-numbers 'relative)
