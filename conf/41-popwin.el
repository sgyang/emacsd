(when (require 'popwin nil t)
  (popwin-mode 1)
  (setq display-buffer-function 'popwin:display-buffer)
  (setq popwin:popup-window-height 0.7)

  ;; grep
  (push '("\*grep\*" :regexp t :position right :width 40 :stick t)
        popwin:special-display-config)

  ;; helm
  (push '("^\*helm.+\*$" :regexp t) popwin:special-display-config)
  (add-hook 'helm-after-initialize-hook (lambda ()
                                          (setq display-buffer-function nil)
                                          (popwin:display-buffer helm-buffer t)
                                          (popwin-mode -1)))
  (add-hook 'helm-cleanup-hook (lambda ()
                                 (setq display-buffer-function
                                       'popwin:display-buffer)
                                 (popwin-mode 1))))
