(when (require 'helm-config nil t)
  (helm-mode 1)

  (when (not window-system)
    (custom-set-faces
     '(helm-match ((t (:foreground "yellow"))))
     '(helm-selection ((t (:background "green" :distant-foreground "black"))))
     '(helm-source-header
       ((t (:background "black" :foreground "white" :weight bold
                        :height 1.3 :family "Sans Serif"))))))

  (define-key global-map (kbd "M-x")     'helm-M-x)
  (define-key global-map (kbd "C-x C-f") 'helm-find-files)
  (define-key global-map (kbd "C-x C-r") 'helm-recentf)
  (define-key global-map (kbd "M-y")     'helm-show-kill-ring)
  (define-key global-map (kbd "C-c i")   'helm-imenu)
  (define-key global-map (kbd "C-x b")   'helm-buffers-list)
  (define-key global-map (kbd "C-x C-b") 'helm-buffers-list)

  (define-key helm-map (kbd "C-h") 'delete-backward-char)
  (define-key helm-find-files-map (kbd "C-h") 'delete-backward-char)
  (define-key helm-find-files-map (kbd "TAB") 'helm-execute-persistent-action)
  (define-key helm-read-file-map (kbd "TAB") 'helm-execute-persistent-action))
