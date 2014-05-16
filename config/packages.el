(message "- packages configurations...")

;; Marmalade
(require 'package)
(add-to-list 'package-archives
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(package-initialize)

;; Melpa
(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; Yasnippet - A template system for Emacs
(unless (package-installed-p 'yasnippet)
  (package-install 'yasnippet))
(setq yas-snippet-dirs (directory-files "~/.emacs.d/snippets" t))
(yas-global-mode 1)

;; Syntax highlighting for Slim
(unless (package-installed-p 'slim-mode)
  (package-install 'slim-mode))

;; flymake-ruby for on the fly syntax checking
(unless (package-installed-p 'flymake-ruby)
  (package-install 'flymake-ruby))
(add-hook 'ruby-mode-hook 'flymake-ruby-load)

;; Scala-mode2
(unless (package-installed-p 'scala-mode2)
  (package-refresh-contents) (package-install 'scala-mode2))

(unless (package-installed-p 'multiple-cursors)
  (package-install 'multiple-cursors))
(global-set-key (kbd "C-c m l l") 'mc/edit-lines)
(global-set-key (kbd "C-c m l b") 'mc/edit-beginnings-of-lines)
(global-set-key (kbd "C-c m l e") 'mc/edit-ends-of-lines)
(global-set-key (kbd "C-c m a a") 'mc/mark-all-like-this)
(global-set-key (kbd "C-c m a r") 'mc/mark-all-in-region)
(global-set-key (kbd "C-c m e") 'mc/mark-more-like-this-extended)
(global-set-key (kbd "C-c m t") 'mc/mark-sgml-tag-pair)
(global-set-key (kbd "C-c m SPC") 'set-rectangular-region-anchor)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-{") 'mc/skip-to-next-like-this)
(global-set-key (kbd "C-}") 'mc/skip-to-previous-like-this)

;; Projectile is a project interaction library for Emacs
(unless (package-installed-p 'projectile)
  (package-install 'projectile))
(projectile-global-mode)
;;(define-key projectile-mode-map [?\d-M] 'projectile-find-dir)
;;(define-key projectile-mode-map [?\M-p] 'projectile-switch-project)
;;(define-key projectile-mode-map [?\M-f] 'projectile-find-file)

;; Fuzzy matching for Emacs ... a la Sublime Text.
(unless (package-installed-p 'flx-ido)
  (package-install 'flx-ido))
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)

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
