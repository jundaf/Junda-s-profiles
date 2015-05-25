;; C-x C-j opens dired with the cursor right on the file you're editing
(require 'dired-x)

(require 'whitespace)
(global-whitespace-mode t)
(setq whitespace-style '(face empty lines-tail tabs trailing))
(global-set-key (kbd "C-c C") 'whitespace-cleanup)

;; Changes the window configuration with
;; 'C-c left' and 'C-c right'.
(when (fboundp 'winner-mode)
  (winner-mode))

;; Visible bookmarks keybindings
(when (featurep 'bm)
  (global-set-key (kbd "<f2>") 'bm-next)
  (global-set-key (kbd "<S-f2>") 'bm-previous)
  (global-set-key (kbd "<C-f2>") 'bm-toggle)
  ;; Click on fringe to toggle bookmarks,
  ;; and use mouse wheel to move between them.
  (global-set-key (kbd "<left-fringe> <mouse-5>") 'bm-next-mouse)
  (global-set-key (kbd "<left-fringe> <mouse-4>") 'bm-previous-mouse)
  (global-set-key (kbd "<left-fringe> <mouse-1>") 'bm-toggle-mouse))

;; Make M-y invoke browse-kill-ring
(when (featurep 'browse-kill-ring)
  (browse-kill-ring-default-keybindings)
  (global-set-key (kbd "C-c k") 'browse-kill-ring))

(when (featurep 'psvn)
  (setq 'svn-status-hide-unmodified t)
  (global-set-key (kbd "C-c s") 'svn-status))

(when (featurep 'smex)
  (global-set-key (kbd "M-x") 'smex)
  (global-set-key (kbd "M-X") 'smex-major-mode-commands))

(when (featurep 'expand-region)
  (global-set-key (kbd "C-=") 'er/expand-region)
  (global-set-key (kbd "<f7>") 'er/expand-region)
  (global-set-key (kbd "C-<f7>") 'er/contract-region))

(when (featurep 'helm)
  (global-set-key (kbd "C-c e") 'helm-etags-select)
  (global-set-key (kbd "C-c h") 'helm-mini)
  (global-set-key (kbd "C-c i") 'helm-imenu)
  (global-set-key (kbd "C-c j") 'helm-filtered-bookmarks)
  (global-set-key (kbd "C-c o") 'helm-occur)
  (global-set-key (kbd "<f5>") 'helm-resume))
