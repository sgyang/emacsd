(when (require 'tabbar nil t)
  (setq tabbar-buffer-groups-function nil)
  (setq tabbar-buffer-list-function
        (lambda ()
          (remove-if
           (lambda(buffer)
             (find (aref (buffer-name buffer) 0) " *"))
           (buffer-list))))
  (setq tabbar-separator '(1.0))
  (dolist (btn '(tabbar-buffer-home-button
                 tabbar-scroll-left-button
                 tabbar-scroll-right-button))
    (set btn (cons (cons "" nil)
                   (cons "" nil))))
  (global-set-key (kbd "C-c n") 'tabbar-forward-tab)
  (global-set-key (kbd "C-c p") 'tabbar-backward-tab)
  (global-set-key [f4] 'tabbar-mode))
