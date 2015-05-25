;; Gnu Global Mode
(autoload 'gtags-mode "gtags"
  "Use GLOBAL as the tag system of Emacs editor instead of etags." t)

;; Svn Status Mode
(autoload 'svn-status "psvn"
  "Examine the status of Subversion working copy in directory DIR." t)

;; Default coding style for C/Java
(setq c-default-style
      '((java-mode . "java") (awk-mode . "awk") (other . "linux")))

;; CC Mode.
(defun jdf-cmode-hook ()
  (setq tab-width 8)
  ;; this will make sure spaces are used instead of tabs
  (setq indent-tabs-mode nil)
  (imenu-add-menubar-index))

(add-hook 'c-mode-hook 'jdf-cmode-hook)

;; Python Mode
(add-hook 'python-mode-hook (lambda ()
                              (imenu-add-menubar-index)))

;; Enable wf global minor mode
;; (which-function-mode)
