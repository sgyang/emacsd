;; google-c-style
(when (require 'google-c-style nil t)
  (add-hook 'c-mode-common-hook 'google-set-c-style)
  (add-hook 'c-mode-common-hook 'google-make-newline-indent))

(setq auto-mode-alist
      (append '(("\\.h$" . c++-mode)) auto-mode-alist))

;; php-mode
(when (require 'php-mode nil t)
  (add-to-list 'auto-mode-alist
               '("\\.ctp\\'" . php-mode))
  (setq php-search-url "http://jp.php.net/ja/")
  (setq php-manual-url "http://jp.php.net/manual/ja/"))

;; mmm-mode
(require 'mmm-mode)
(invert-face 'mmm-default-submode-face t)
(setq mmm-font-lock-available-p t)
(setq mmm-global-mode 'maybe)
(mmm-add-mode-ext-class nil "\\.php?\\'" 'html-php)
(mmm-add-classes
 '((html-php
    :submode php-mode
    :front "<\\?\\(php\\)?"
    :back "\\?>")))
(add-to-list 'auto-mode-alist '("\\.php?\\'" . html-mode))
(add-hook 'nxml-mode-hook
          (lambda ()
            (setq nxml-slash-auto-complete-flag t)
            (setq nxml-child-indent 2)
            (setq indent-tabs-mode nil)
            (setq tab-width 2)))

;; markdown-mode
(when (require 'markdown-mode nil t)
  (add-to-list 'auto-mode-alist
               '("\\.md\\'" . markdown-mode)))
