(require 'auto-complete-config)
(ac-config-default)
(add-to-list 'ac-dictionary-directories
             "~/.emacs.d/elisp/auto-complete-1.3.1/dict")
(define-key ac-mode-map (kbd "M-/") 'auto-complete)

;; color
(set-face-background 'ac-completion-face "#333333")
(set-face-foreground 'ac-candidate-face "#666666")
(set-face-background 'ac-selection-face "#666666")
(set-face-foreground 'popup-summary-face "pink")
(set-face-background 'popup-tip-face "yellow")
(set-face-foreground 'popup-tip-face "black")

;; time
(setq ac-delay 0.2)
(setq ac-auto-show-menu 0.2)
(setq ac-quick-help-delay 0.2)

;; using C-p C-n instead of M-p M-n
(setq ac-use-menu-map t)

;; additional refinement by C-s
(setq ac-use-fuzzy t)
