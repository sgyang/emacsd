(when window-system
  (when (require 'color-theme nil t)
    (color-theme-initialize)
    (color-theme-dark-laptop))
  (custom-set-faces
   '(default ((t (:family "Inconsolata" :foundry "unknown" :slant normal
                          :weight normal :height 120 :width normal))))))
