(package-initialize)

(when (< emacs-major-version 23)
  (defvar user-emacs-directory "~/.emacs.d/"))

(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory
              (expand-file-name (concat user-emacs-directory path))))
        (add-to-list 'load-path default-directory)
        (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
            (normal-top-level-add-subdirs-to-load-path))))))

(add-to-load-path "elisp" "elpa" "repos" "conf")

;; init-loader
(require 'init-loader)
(init-loader-load "~/.emacs.d/conf")

;; load environment variables
(let ((envs '("PATH" "GOROOT" "GOPATH")))
  (exec-path-from-shell-copy-envs envs))
