(when (and (require 'direx nil t)
           (require 'direx-project nil t))
  (push '(direx:direx-mode :position left :width 40 :dedicated t)
      popwin:special-display-config)

  ;; http://shibayu36.hatenablog.com/entry/2013/02/12/191459
  (defun direx:jump-to-project-directory ()
    (interactive)
    (let ((result (ignore-errors
                    (direx-project:jump-to-project-root-other-window)
                    t)))
      (unless result
        (direx:jump-to-directory-other-window))))

  (global-set-key (kbd "C-x C-j") 'direx:jump-to-project-directory))
