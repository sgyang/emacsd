(when (require 'anything nil t)
  (setq
   anything-idle-delay 0.3
   anything-input-idle-delay 0.2
   anything-candidate-number-limit 100
   anything-quick-update t
   anything-enable-shortcuts 'alphabet)
  (require 'anything-startup nil t)
  (define-key global-map (kbd "C-x b") 'anything-for-files)
  (define-key global-map (kbd "C-x C-b") 'anything-for-files)
  (define-key global-map (kbd "C-x C-f") 'anything-find-files))
