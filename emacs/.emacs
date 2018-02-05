;; layout inspired from http://emacsblog.org/2007/10/07/declaring-emacs-bankruptcy/
;; see also https://github.com/rmm5t/dotfiles/tree/master/emacs.d/rmm5t

;; Enable a backtrace when problems occur
;; (setq debug-on-error t)

(setq emacs-lib-dir (expand-file-name "~/.emacs.d/dotfiles-lib"))

;; Load paths
(add-to-list 'load-path emacs-lib-dir)
(add-to-list 'load-path (concat emacs-lib-dir "/lisp"))
(add-to-list 'load-path (concat emacs-lib-dir "/lisp-personal"))
;(add-to-list 'load-path "/usr/share/git-core/emacs")

;; p4 support from http://public.perforce.com/wiki/Emacs_VC-P4
(require 'vc-p4)

(require 'vc-git)
(require 'git)

(require 'web-mode)
(require 'markdown-mode)

;; Personal customizations
(require 'my-generic)
(require 'my-c)
(require 'my-whitespace)
(require 'my-diff)
(require 'my-perl)
(require 'my-web)
(require 'p4-workspace)
