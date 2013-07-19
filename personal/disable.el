;; Disabilities
; Allow arrow key navigation
(setq prelude-guru nil)
; Disable flycheck for emacs files
(eval-after-load 'flycheck
  '(setq flycheck-checkers
         (delq 'emacs-lisp-checkdoc flycheck-checkers)))
