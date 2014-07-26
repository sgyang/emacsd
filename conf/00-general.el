;; startup
(setq inhibit-startup-screen t)
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8-unix)

;; completion
(setq completion-ignore-case t)
(setq read-file-name-completion-ignore-case t)
(icomplete-mode 1)

;; backup
(setq backup-inhibited t)
(setq make-backup-files nil)
(setq delete-auto-save-files t)

;; history
(setq history-length 10000)
(savehist-mode 1)

;; save place
(require 'saveplace)
(setq-default save-place t)
(setq save-place-file "~/.emacs.d/saved-places")

;; appearance
;(setq-default show-trailing-whitespace t)
(blink-cursor-mode 0)
(column-number-mode t)
(line-number-mode t)
(size-indication-mode t)
(setq require-final-newline t)
(menu-bar-mode nil)
(when window-system
  (tool-bar-mode nil)
  (scroll-bar-mode nil)
)
(setq show-paren-delay 0)
(show-paren-mode t)

;; indent
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

;; uniquify
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward)
