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
(package-initialize)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "red3" "ForestGreen" "yellow3" "blue" "magenta3" "DeepSkyBlue" "gray50"])
 '(custom-enabled-themes (quote (dakrone)))
 '(custom-safe-themes
   (quote
    ("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "246cd0eb818bfd347b20fb6365c228fddf24ab7164752afe5e6878cb29b0204e" "2593436c53c59d650c8e3b5337a45f0e1542b1ba46ce8956861316e860b145a0" default)))
 '(package-selected-packages (quote (spacemacs-theme dakrone-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

; set different themes for window and terminal versions
(if (display-graphic-p) 
  (enable-theme 'dakrone) 
;  (enable-theme 'spacemacs-dark)
)
