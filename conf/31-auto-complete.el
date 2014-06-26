(when (require 'auto-complete-config nil t)
  (add-to-list 'ac-dictionary-directories
               "~/.emacs.d/elisp/auto-complete-1.3.1/dict")
  (define-key ac-mode-map (kbd "M-/") 'auto-complete)
  (ac-config-default))
