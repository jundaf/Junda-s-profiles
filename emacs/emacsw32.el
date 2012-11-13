(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(cua-mode t nil (cua-base))
 '(emacsw32-style-frame-title t)
 '(ido-mode (quote both) nil (ido))
 '(make-backup-files nil)
 '(ourcomments-ido-ctrl-tab t)
 '(recentf-mode t)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify))
 '(w32shell-cygwin-bin "D:\\cygwin\\bin")
 '(w32shell-shell (quote cygwin)))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;; Disable emacs welcome screen
(setq inhibit-splash-screen t)

(global-auto-revert-mode 1)
(which-function-mode 1)
(icomplete-mode 1)

(when (fboundp 'winner-mode)
  (winner-mode)
  (windmove-default-keybindings 'meta))

(global-set-key (kbd "M-<RET>") 'complete-symbol)
(global-set-key (kbd "C-x C-b") 'bs-show)
(global-set-key (kbd "C-c z") 'shell)
(global-set-key (kbd "<f10>") 'rename-buffer)
(global-set-key (kbd "<f8>") 'speedbar-get-focus)

;; CC mode
(setq c-default-style
      '((java-mode . "java") (awk-mode . "awk") (other . "linux")))

;; Customizations for all modes in CC Mode.
(defun jdf-cmode-common-hook ()
  (setq tab-width 8)
  ;; this will make sure spaces are used instead of tabs
  (setq indent-tabs-mode nil)
  (imenu-add-menubar-index))

(add-hook 'c-mode-common-hook 'jdf-cmode-common-hook)

;; Shell mode
(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on t)

(cd "~")
