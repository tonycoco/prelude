;; Functions
(defun split-vertical-balanced ()
  (interactive)
  (split-window-horizontally)
  (balance-windows))

(defun split-window-vertically-balanced ()
  (interactive)
  (split-window-vertically)
  (balance-windows))

(defun sweet-color-picker ()
  "Insert Hex color from OS X color picker"
  (interactive)
  (do-applescript "set the RGB16bit_list to (choose color default color {65535, 65535, 65535})
set the formatedColor to my RGB_to_HEX(RGB16bit_list)
set the clipboard to formatedColor

on RGB_to_HEX(RGB_values)
  set the hex_list to {\"0\", \"1\", \"2\", \"3\", \"4\", \"5\", \"6\", \"7\", \"8\", \"9\", \"A\", \"B\", \"C\", \"D\", \"E\", \"F\"}
  set the the hex_value to \"\"
  repeat with i from 1 to the count of the RGB_values
    set this_value to (item i of the RGB_values) div 256
    if this_value is 256 then set this_value to 255
    set x to item ((this_value div 16) + 1) of the hex_list
    set y to item (((this_value / 16 mod 1) * 16) + 1) of the hex_list
    set the hex_value to (the hex_value & x & y) as string
  end repeat
  return (\"#\" & the hex_value)
end RGB_to_HEX")
  (clipboard-yank))

(defmacro preserving-column (&rest body)
  `(let (c (current-column))
    ,@body
    (move-to-column c)))

(defun transpose-preserving-row (direction)
  (preserving-column
   (forward-line 1)
   (transpose-lines direction)
   (forward-line -1)))

(defun move-line-up ()
  (interactive)
  (transpose-preserving-row -1))

(defun move-line-down ()
  (interactive)
  (transpose-preserving-row 1))

(defun set-font-retina ()
  "Set the font size for laptop screen"
  (interactive)
  (set-font-size 113))

(defun set-font-cinema ()
  "Set font size for the cinema display"
  (interactive)
  (set-font-size 170))

(defun switch-to-previous-buffer ()
  "toggle between this and previous buffer"
  (interactive)
  (switch-to-buffer (other-buffer)))

(defun set-font-size (font-height)
  (custom-set-faces `(default ((t (:height ,font-height :family "Monaco"))))))

(defun ep ()
  "Open ~/.emacs.d/personal/personal.el in current buffer"
  (interactive)
  (find-file "~/.emacs.d/personal/personal.el"))

(defun epkg ()
  "Open ~/.emacs.d/personal/_packages.el in current buffer"
  (interactive)
  (find-file "~/.emacs.d/personal/_packages.el"))

(defun es ()
  "Open ~/.emacs.d/personal/settings.el in current buffer"
  (interactive)
  (find-file "~/.emacs.d/personal/settings.el"))

(defun ef ()
  "Open ~/.emacs.d/personal/functions.el in current buffer"
  (interactive)
  (find-file "~/.emacs.d/personal/functions.el"))

(defun edis ()
  "Open ~/.emacs.d/personal/disable.el in current buffer"
  (interactive)
  (find-file "~/.emacs.d/personal/disable.el"))

(defun ekeys ()
  "Open ~/.emacs.d/personal/keybindings.el in current buffer"
  (interactive)
  (find-file "~/.emacs.d/personal/keybindings.el"))

(defun active-modes ()
  "Give a message of which minor modes are enabled in the current buffer."
  (interactive)
  (let ((all-active-modes))
    (mapc (lambda (mode) (condition-case nil
                             (if (and (symbolp mode) (symbol-value mode))
                                 (add-to-list 'all-active-modes mode))
                           (error nil) ))
          minor-mode-list)
    (message "Active modes are %s" all-active-modes)))

(defun toggle-transparency ()
  "Toggle window trasnsparency"
  (interactive)
  (if (/=
       (or (cadr (frame-parameter nil 'alpha)) 100)
       100)
      (set-frame-parameter nil 'alpha '(100 100))
    (set-frame-parameter nil 'alpha '(85 50))))

(defun launch-hashrocket-for-the-lord ()
  "Insert hash rockets in one key"
  (interactive)
  (insert "=>"))

(defun mac-key-mode ()
  (interactive)
  (setq mac-option-modifier 'super)
  (setq mac-command-modifier 'meta))
