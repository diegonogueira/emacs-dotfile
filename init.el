(message "Loading configurations...")

(load-file "~/.emacs.d/config/packages.el")
(load-file "~/.emacs.d/config/common.el")
(load-file "~/.emacs.d/config/ui.el")
(load-file "~/.emacs.d/config/editor.el")

(message "All configurations successfully loaded.")