(message "- packages configurations...")

(require 'package)

;; Marmalade
(add-to-list 'package-archives
'("marmalade" .
      "http://marmalade-repo.org/packages/"))
(package-initialize)

;; Melpa
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; Dropdown-list
;; (unless (package-installed-p 'dropdown-list)
;;   (package-install 'dropdown-list))
;; (require 'dropdown-list)

;; Yasnippet - A template system for Emacs
(unless (package-installed-p 'yasnippet)
  (package-install 'yasnippet))
(setq yas-snippet-dirs (directory-files "~/.emacs.d/snippets" t))
(yas-global-mode 1)
(setq yas-prompt-functions
      '(yas-dropdown-prompt
        yas-ido-prompt
        yas-x-prompt
        yas-completing-prompt
        yas-no-prompt))

;; Syntax highlighting for Slim
(unless (package-installed-p 'slim-mode)
  (package-install 'slim-mode))

;; yaml-mode
(unless (package-installed-p 'yaml-mode)
	(package-install 'yaml-mode))

;; go-mode
(unless (package-installed-p 'go-mode)
	(package-install 'go-mode))

;; flymake-ruby for on the fly syntax checking
(unless (package-installed-p 'flymake-ruby)
  (package-install 'flymake-ruby))
(add-hook 'ruby-mode-hook 'flymake-ruby-load)
(add-to-list 'auto-mode-alist '("\\.rake\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\Gemfile\\'" . ruby-mode))

;; Scala-mode2
(unless (package-installed-p 'scala-mode2)
  (package-refresh-contents) (package-install 'scala-mode2))

;; multiple-cursors
(unless (package-installed-p 'multiple-cursors)
  (package-install 'multiple-cursors))

;; Projectile is a project interaction library for Emacs
(unless (package-installed-p 'projectile)
  (package-install 'projectile))
(projectile-global-mode)

;; Fuzzy matching for Emacs ... a la Sublime Text.
(unless (package-installed-p 'flx-ido)
  (package-install 'flx-ido))
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)

;; REST Client
(unless (package-installed-p 'restclient)
  (package-refresh-contents) (package-install 'restclient))

;; disable ido faces to see flx highlights.
(setq ido-use-faces nil)

;; web-mode - an autonomous emacs major-mode for editing web templates
(unless (package-installed-p 'web-mode) (package-install 'web-mode))
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[gj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.ssp\\'" . web-mode))
