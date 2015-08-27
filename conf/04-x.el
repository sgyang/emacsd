(when window-system
  (when (require 'color-theme nil t)
    (color-theme-initialize)
    (color-theme-dark-laptop))
  (custom-set-faces
   '(default ((t (:family "DejaVu Sans Mono" :foundry "unknown" :slant normal
                          :weight normal :height 90 :width normal))))))
