;; general key bindings
(define-key global-map (kbd "M-?") 'help-for-help)
(define-key global-map (kbd "C-c i") 'indent-region)
(define-key global-map (kbd "C-c C-i") 'hippie-expand)
(define-key global-map (kbd "C-o") 'other-window)
(define-key global-map (kbd "C-[ M-g") 'grep)
(define-key global-map (kbd "M-g") 'goto-line)
(define-key global-map (kbd "C-h") 'delete-backward-char)
(define-key global-map (kbd "C-2") 'set-mark-command)
(define-key global-map (kbd "M-;") 'comment-dwim-2)
(define-key global-map (kbd "C-x M-k") 'kill-other-buffers)
