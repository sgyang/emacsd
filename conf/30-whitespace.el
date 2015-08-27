;; whitespace
(when (require 'whitespace nil t)
  (setq whitespace-style '(face tabs tab-mark spaces space-mark lines-tail
                                trailing space-before-tab space-after-tab::space))
  (setq whitespace-space-regexp "\\(\x3000+\\)")
  (setq whitespace-display-mappings
        '((space-mark ?\x3000 [?\□])
          (tab-mark   ?\t   [?\xBB ?\t])))

  (global-whitespace-mode t)
  (setq whitespace-global-modes '(not go-mode))

  (set-face-attribute 'whitespace-trailing nil
                      :foreground "DeepPink"
                      :underline t)
  (set-face-attribute 'whitespace-tab nil
                      :foreground "LightSkyBlue"
                      :underline nil)
  (set-face-attribute 'whitespace-space nil
                      :foreground "GreenYellow"
                      :weight 'bold))
