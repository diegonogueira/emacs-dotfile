(message "Loading configurations...")

(load-file "~/.emacs.d/config/packages.el")
(load-file "~/.emacs.d/config/common.el")
(load-file "~/.emacs.d/config/ui.el")
(load-file "~/.emacs.d/config/editor.el")

(message "All configurations successfully loaded.")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(safe-local-variable-values (quote ((encoding . utf-8)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
