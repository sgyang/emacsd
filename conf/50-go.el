;; go-autocomplete
(when (require 'go-autocomplete nil t)
  (add-hook 'before-save-hook 'gofmt-before-save))
