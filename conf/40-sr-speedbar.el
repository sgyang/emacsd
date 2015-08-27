(when (require 'sr-speedbar nil t)
  (global-set-key (kbd "M-s") 'sr-speedbar-toggle)
  (add-hook 'speedbar-mode-hook
            '(lambda ()
               (speedbar-add-supported-extension
                '("py" "go" "h" "c" "cc" "cpp" "java"
                  "html" "css"))))
  (setq sr-speedbar-width 26)
  (setq sr-speedbar-right-side nil)
  (setq sr-speedbar-auto-refresh nil))
