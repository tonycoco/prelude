;; Editor settings
; Set custom theme directory
(setq custom-theme-directory (concat prelude-personal-dir "/themes"))
; Start in fullscreen
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))
; Turn off window fringe
(set-fringe-mode 0)
; Hide scrollbar
(scroll-bar-mode -1)
; Disable flyspell
(setq prelude-flyspell nil)
; Turn off smartparens highlighting
(setq sp-highlight-pair-overlay nil
      sp-highlight-wrap-overlay nil
      sp-highlight-wrap-tag-overlay nil)
; Set font-size for cinema display
(set-font-cinema)
; Disable zenburn theme because it makes powerline ugly
(disable-theme 'zenburn)
; Use smex
(smex-initialize)
(smex-auto-update 30)
(setq smex-show-unbound-commands t)
(global-set-key (kbd "M-x") 'smex)
; Environment variables
(setq exec-path (cons "/usr/local/bin" exec-path))
(setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))
(getenv "GEM_HOME")
; Spellcheck dictionary
(setq ispell-dictionary "en")
; Default tab width
(setq default-tab-width 2)
; Turn on line numbers
(global-linum-mode 1)
; Add gutter to line numbers
(setq linum-format " %d ")
; Bar cursor
(set-default 'cursor-type 'bar)
; Blinking cursor
(blink-cursor-mode t)
; Visual bell without sound
(setq ring-bell-function (lambda () (message "*don't touch me there*")))
; Set custom snippet directory
(setq yas-snippet-dirs '("~/.emacs.d/personal/snippets/"))
; Explicitly set option/meta keys
(setq mac-option-modifier 'super)
(setq mac-command-modifier 'meta)
(global-visual-line-mode t)
(setq prelude-whitespace nil)
; GUI/Terminal mode specific code
(if (display-graphic-p)
  ; GUI
  (progn
    (load-theme 'twilight t))
  ; Terminal
  (load-theme 'wombat t))
