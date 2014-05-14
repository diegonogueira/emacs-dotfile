(message "- common configurations...")

;; Disable backup and auto save.
(setq backup-inhibited t)
(setq auto-save-default nil)

;; Enable iBuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)
(iswitchb-mode)

;; Enable IDO.
(require 'ido)
(ido-mode t)

;; Auto revert file
;; Auto reload file when changed on another editor
(global-auto-revert-mode 1)