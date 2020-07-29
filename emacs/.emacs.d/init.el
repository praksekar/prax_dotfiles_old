(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; install packages on new machines
(setq package-selected-packages
   '(ace-window
     org-bullets
    avy
    evil-collection
    goto-chg
    gruvbox-theme
    autothemer
    dash
    flycheck-pos-tip
    company-quickhelp
    company-anaconda
    company-shell
    ))
(package-install-selected-packages)

(org-babel-load-file "~/.emacs.d/config.org")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (org-bullets lsp-ui lsp-java lsp-mode company-anaconda ace-window avy evil-collection goto-chg gruvbox-theme autothemer dash flycheck-pos-tip company-quickhelp))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
