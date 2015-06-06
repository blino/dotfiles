(require 'switch-to-buffer)

; p4 environment variables
(setq p4-workspaces-dir (concat (expand-file-name "~") "/dev/workspaces"))
(defun set-p4-env ()
  "Set p4 environment variables according to file path"
  ; this assumes a certain formalism in the workspace path
  ;   /home/sah0146/dev/workspaces/pc32/hgw/ (Wijgmaal sah0146_BS_pc32)
  ;   /home/sah0146/dev/workspaces/pc32/stb/ (Nanterre WS_sah0146_pc32)
  (when (and buffer-file-name
             (string-prefix-p p4-workspaces-dir buffer-file-name))
    (let*
        (
         (extra-path (substring buffer-file-name (length p4-workspaces-dir)))
         (path-components (split-string extra-path "/" t))
         (client (pop path-components))
         (type (pop path-components))
         (is-stb (string= type "stb"))
         (p4user (getenv "USER"))
         (p4port (if is-stb
                     "sahfrg2.softathome.com:1666"   ; Nanterre
                     "sahfrg2.softathome.com:1999")) ; Wijgmaal
         (p4client (if is-stb
                       (concat "WS_" p4user "_" client) ; WS_sah0146_pc32
                       (concat  p4user "_BS_" client)   ; sah0146_BS_pc32
                       ))
         )
      (message (format "Applying P4 env %s / %s" p4port p4client))
      (setenv "P4PORT" p4port)
      (setenv "P4CLIENT" p4client)
      )))
; apply p4 env when opening a new buffer (before p4 hook
; and when switching to a buffer
(add-hook 'change-major-mode-after-body-hook 'set-p4-env)
(add-hook 'after-switch-to-buffer-hooks 'set-p4-env)

(provide 'p4-workspace)
