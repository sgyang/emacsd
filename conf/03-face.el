;; color-theme
(when window-system
  (when (require 'color-theme nil t)
    (color-theme-initialize)
    (color-theme-dark-laptop)))

(set-face-foreground 'font-lock-comment-face "pink")
(set-face-foreground 'font-lock-comment-delimiter-face "pink")
