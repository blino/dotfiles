; perl
(add-to-list 'auto-mode-alist '("\\.\\(pm\\|pl\\)$" . cperl-mode))
(defalias 'perl-mode 'cperl-mode)
(setq auto-mode-alist (cons '("\\.xs$" . perl-mode) auto-mode-alist))
(setq cperl-indent-level 4)
(setq cperl-indent-parens-as-block t)
(setq cperl-close-paren-offset -4)
(setq cperl-break-one-line-blocks-when-indent nil)

(provide 'my-perl)
