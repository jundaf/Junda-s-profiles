;; No backup files
(setq make-backup-files nil)

;; Unified diffs
(setq diff-switches "-u")

;; No welcome screen
(setq inhibit-splash-screen t)

;; Use directory names in buffer names
(setq uniquify-buffer-name-style 'forward)

;; No Chinese in Org timestamp
(setq system-time-locale "C")

(cua-mode)
(icomplete-mode)
(ido-mode)

(global-auto-revert-mode)
(recentf-mode)

(scroll-bar-mode)
(show-paren-mode)

;; Global keybindings
;;
(global-set-key (kbd "M-<RET>") 'complete-symbol)
(global-set-key (kbd "C-x C-b") 'bs-show)
(global-set-key (kbd "C-x B") 'ibuffer)
(global-set-key (kbd "C-c C-f") 'recentf-open-files)
(global-set-key (kbd "C-c r") 'remember)
(global-set-key (kbd "<f8>") 'speedbar-get-focus)
(global-set-key (kbd "<f9>") 'shell)
(global-set-key (kbd "C-<f9>") 'eshell)

;; Org global keybindings
;;
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cl" 'org-store-link)
