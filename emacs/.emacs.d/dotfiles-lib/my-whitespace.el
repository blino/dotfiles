; show trailing whitespaces for code
(defun enable-show-trailing-whitespace ()
  "Enable show-trailing-whitespace"
  (setq show-trailing-whitespace t)
)

(add-hook 'c-mode-common-hook 'enable-show-trailing-whitespace)
(add-hook 'cperl-mode-hook 'enable-show-trailing-whitespace)
(add-hook 'makefile-mode-hook 'enable-show-trailing-whitespace)

(require 'whitespace)

(provide 'my-whitespace)
