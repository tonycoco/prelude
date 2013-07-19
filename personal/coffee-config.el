(require 'coffee-mode)
; Compile and preview coffeescript
(define-key coffee-mode-map (kbd "s-r") 'coffee-compile-buffer)
; Set default coffees command
(add-hook 'coffee-mode-hook
  (setq coffee-command "coffee"))
