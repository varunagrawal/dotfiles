;; Put autosave files (ie #foo#) and backup files (ie foo~) in ~/.emacs.d/.
;; create the autosave dir if necessary, since emacs won't.
;(make-directory "~/.emacs.d/autosaves/" t)
;(make-directory "~/.emacs.d/backups/" t)

(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

(message "Deleting old backup files...")
(let ((week (* 60 60 24 7))
      (current (float-time (current-time))))
  (dolist (file (directory-files temporary-file-directory t))
    (when (and (backup-file-name-p file)
         (> (- current (float-time (nth 5 (file-attributes file))))
      week))
      (message "%s" file)
            (delete-file file))))

; set the c indent style to linux rather than the default GNU style
(setq c-default-style "linux"
      c-basic-offset 4)

(setq x-select-enable-clipboard t)

;; Setup packages
(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

; Load theme
(load-theme 'dakrone t)

; set different themes for window and terminal versions
(if (display-graphic-p) 
  (enable-theme 'dakrone) 
;  (enable-theme 'foggy-night)
;  (enable-theme 'spacemacs-dark)
;  (enable-theme 'spacemacs-theme))
)
