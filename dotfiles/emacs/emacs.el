(add-to-list 'default-frame-alist
             '(font . "DejaVu Sans Mono-12"))

(setq base-dir "~/.emacs.jundaf")
(add-to-list 'load-path base-dir)

(load "custom")
(load "coding")

(server-start)

(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives
               '("melpa" . "http://melpa.milkbox.net/packages/") t)
  )

;; emacs goodies
(require 'bm)
(require 'browse-kill-ring)

;; load this at the end
(load "goodies")
