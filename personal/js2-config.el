; JavaScript settings
(custom-set-variables
 '(js2-basic-offset 2)
 '(js2-bounce-indent-p nil))
; Treat jst files as html
(add-to-list 'auto-mode-alist '("\\.jst" . html-mode))
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
