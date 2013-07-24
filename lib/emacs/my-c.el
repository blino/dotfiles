; hilight C errors
(global-cwarn-mode 1)

; C mode preferences
(add-hook 'c-mode-common-hook
          '(lambda ()
            (c-set-style "stroustrup")
	    (setq-default indent-tabs-mode nil)
	    ))

(provide 'my-c)
