;;package-manager
(require 'package)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(setq  my-packages '(auto-complete
                     js2-mode
                     popwin
                     window-number
                     yasnippet
                     buffer-move
                     multiple-cursors
                     rspec-mode
                     powerline
                     smex
                     rainbow-delimiters
                     tidy
                     bundler
                     coffee-mode))

(defun install-my-packages ()
  (dolist (p my-packages)
    (when (not (package-installed-p p))
      (package-install p))))


(not  (package-installed-p 'ac-slime))

(install-my-packages)
;;end package management
