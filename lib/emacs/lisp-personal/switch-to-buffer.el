; allow hooking buffer switch
(setq after-switch-to-buffer-hooks nil)
(defun after-switch-to-buffer ()
  (run-hooks 'after-switch-to-buffer-hooks))
(defadvice switch-to-buffer (after after-switch-to-buffer activate)
  (after-switch-to-buffer))

(provide 'switch-to-buffer)
