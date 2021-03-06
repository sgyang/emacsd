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
(when (require 'saveplace nil t)
  (setq-default save-place t)
  (setq save-place-file "~/.emacs.d/saved-places"))

;; appearance
;(setq-default show-trailing-whitespace t)
(setq require-final-newline t)
(setq show-paren-delay 0)
(custom-set-variables
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(line-number-mode t)
 '(size-indication-mode t)
 '(menu-bar-mode t)
 '(tool-bar-mode nil)
 '(scroll-bar-mode nil)
 '(show-paren-mode t))

;; indent
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

;; auto revert mode
(global-auto-revert-mode 1)

;; uniquify
(when (require 'uniquify nil t)
  (setq uniquify-buffer-name-style 'post-forward))
