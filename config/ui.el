(message "- UI configurations...")

;; Load Zenburn color theme.
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'zenburn t)

;; Disable startup screen.
(setq inhibit-startup-screen t)

;; Disable toolbar.
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))

;; Disable scrolling.
(scroll-bar-mode -1)

;; Disable cursor blink.
(blink-cursor-mode -1)

;; Highlight the current line.
(global-hl-line-mode +1)

;; Show line numbers with an empty space after each number.
(global-linum-mode 1)
(setq linum-format "%d ")

;; Set Monaco as default font on mac
(if (eq system-type 'darwin) (set-default-font "Monaco-14"))
