;; Open recent files
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;; Multiple cursor
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

;; iBuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; Ido buffer
(global-set-key (kbd "M-1") 'ido-switch-buffer)

;; Sort selected lines
(global-set-key (kbd "C-c s l") 'sort-lines)

;; Projectile shortcuts
(define-key projectile-mode-map [?\M-t] 'projectile-find-file)
(define-key projectile-mode-map [?\M-p] 'projectile-switch-project)
(define-key projectile-mode-map [?\M-G] 'projectile-grep)
;;(define-key projectile-mode-map [?\d-M] 'projectile-find-dir)
