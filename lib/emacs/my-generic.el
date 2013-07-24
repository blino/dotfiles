(setq inhibit-startup-message t)

(global-set-key "\M-g" 'goto-line)

; use y or n for yes or no
(fset 'yes-or-no-p 'y-or-n-p)

; hilight region
(setq transient-mark-mode t)

; hilight opposite parenthese
(setq show-paren-mode t)

; Display line and column numbers
(setq line-number-mode   t)
(setq column-number-mode t)

;(defun make-writable ()
;  "Make current file writable"
;  (interactive)
;  (shell-command (concat "chmod u+w " (buffer-name)))
;)

;(add-to-list 'vc-handled-backends 'GIT)

;; Ubuntu 8.04
;;(add-to-list 'default-frame-alist '(font . "9x15"))

; workaround for ibus bug to get dead-circumflex work
; http://code.google.com/p/ibus/issues/detail?id=526
; see also http://www.linuxdoc.org/HOWTO/Keyboard-and-Console-HOWTO-12.html
; ?? (load-library "iso-transl")

(setq desktop-path '("~/.emacs.d/"))
;;(desktop-save-mode 1)

(provide 'my-generic)
