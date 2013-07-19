(setq exec-path (cons "~/.rbenv/shims" exec-path))
(setenv "PATH" (concat "~/.rbenv/shims:" (getenv "PATH")))

(add-to-list 'auto-mode-alist '("\\.irbrc" . ruby-mode))
