;; python-mode
(when (require 'python-mode nil t)
  ;; whitespace
  (whitespace-mode)

  ;; jedi
  (add-hook 'python-mode-hook 'jedi:setup))
