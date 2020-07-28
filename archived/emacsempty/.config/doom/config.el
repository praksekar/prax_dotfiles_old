;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

(setq user-full-name "John Doe"
      user-mail-address "john@doe.com")

(setq doom-theme 'doom-palenight)

(setq org-directory "~/org/")

(setq display-line-numbers-type 'relative)

(setq doom-font "Ubuntu Mono-12")

(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
    backup-by-copying      t  ; Don't de-link hard links
    version-control        t  ; Use version numbers on backups
    delete-old-versions    t  ; Automatically delete excess backups:
    kept-new-versions      20 ; how many of the newest versions to keep
    kept-old-versions      5) ; and how many of the old

(setq-default x-super-keysym 'meta)

(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "chromium-browser")

(use-package company-box
  :hook (company-mode . company-box-mode))

(use-package company-quickhelp
:config
(global-company-mode)
(company-quickhelp-mode)
(add-to-list 'company-backends 'company-files)
(setq company-quickhelp-delay 0.1))

;;  (use-package! lsp
 ;;   :config
  ;;  (setq lsp-ui-sideline-enable nil))
