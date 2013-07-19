;; Keybindings
; C - Control
; S - Shift
; s - Super/Option/Alt
; M - Meta/Cmd
; <return> - Enter/Return
; ⬆<up> - Up arrow
; ⬇<down> - Down arrow
; ⬅<left> - Left arrow
; ➡<right> - Right arrow

; Cut
(global-set-key (kbd "s-x") 'kill-region)
; Copy
(global-set-key (kbd "s-c") 'kill-ring-save)
; Paste
(global-set-key (kbd "s-v") 'yank)
; Select all
(global-set-key (kbd "s-a") 'mark-page)
; Close window
(global-set-key (kbd "s-w") 'delete-window)
; Quit emacs
(global-set-key (kbd "s-q") 'save-buffers-kill-terminal)
; Open file
(define-key prelude-mode-map (kbd "M-o") 'ido-find-file)
; Find file in project
(global-set-key (kbd "M-t") 'projectile-find-file)
; Find in project
(global-set-key (kbd "s-F") 'ack)
; Find in file
(global-set-key (kbd "s-f") 'occur)
; New line and indent
(global-set-key (kbd "<M-return>") 'newline-and-indent)
; Split window vertically
(global-set-key (kbd "M-s-2")  'split-vertical-balanced)
; Split window horizontally
(global-set-key (kbd "M-s-4")  'split-window-vertically-balanced)
; Insert color from color picker
(global-set-key (kbd "M-s-c") 'sweet-color-picker)
; List open buffers
(global-set-key (kbd "M-s-b") 'ibuffer-list-buffers)
; Find open buffer
(global-set-key (kbd "s-b") 'ido-switch-buffer)
; Close other windows (single window)
(global-set-key (kbd "<M-S-return>") 'delete-other-windows)
; Move line up
(global-set-key (kbd "<M-C-up>") 'move-line-up)
; Move line down
(global-set-key (kbd "<M-C-down>") 'move-line-down)
; Sort lines
(global-set-key (kbd "<f5>") 'sort-lines)
; Hashrocket launcher
(global-set-key (kbd "s-l") 'launch-hashrocket-for-the-lord)
(global-set-key (kbd "s-=") 'launch-hashrocket-for-the-lord)
; Open shell
(global-set-key (kbd "s-.") 'shell)
; Toggle transparency
(global-set-key (kbd "s-u") 'toggle-transparency)
; Undo
(global-set-key (kbd "s-z") 'undo)
; Evaluate buffer
(global-set-key (kbd "s-e") 'eval-buffer)
; Duplicate line
(global-set-key (kbd "s-D") 'prelude-duplicate-current-line-or-region)
; Open previous buffer
(global-set-key (kbd "C-\\") 'switch-to-previous-buffer)
; Format buffer
(global-set-key (kbd "C-S-f") 'prelude-indent-buffer)
; Navigation buffers with Shift+<arrow>
; Focus left buffer
(global-set-key [S-left] 'windmove-left)
; Focus right buffer
(global-set-key [S-right] 'windmove-right)
; Focus upper buffer
(global-set-key [S-up] 'windmove-up)
; Focus lower buffer
(global-set-key [S-down] 'windmove-down)
; Move buffers with Ctrl+Shift+<arrow>
; Swap current buffer with upper buffer
(global-set-key (kbd "<C-S-up>") 'buf-move-up)
; Swap current buffer with lower buffer
(global-set-key (kbd "<C-S-down>") 'buf-move-down)
; Swap current buffer with left buffer
(global-set-key (kbd "<C-S-left>") 'buf-move-left)
; Swap current buffer with right buffer
(global-set-key (kbd "<C-S-right>") 'buf-move-right)
