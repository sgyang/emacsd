;; python-mode
(require 'python-mode nil t)

;; jedi
(add-hook 'python-mode-hook 'jedi:setup)
