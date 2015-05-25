;; Set default frame font
(add-to-list 'default-frame-alist '(font . "DejaVu Sans Mono-14"))

;; Disable loading of "default.el" at startup
(setq inhibit-default-init t)

;; Disable the welcome screen
(setq inhibit-splash-screen t)

;; Don't save backup files
(setq make-backup-files nil)

;; Enable visual feedback on selections
(setq transient-mark-mode t)

;; Default to better frame titles
(setq frame-title-format
      (concat  "%b - emacs@" (system-name)))

;; Default to unified diffs
(setq diff-switches "-u")

;; Hide the toolbar
(tool-bar-mode nil)

;; Lua-mode
;; (add-to-list 'load-path "/path/to/lua-mode")
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))

;; Vala-mode
;; (add-to-list 'load-path (expand-file-name "~/.emacs.d"))
(autoload 'vala-mode "vala-mode" "Major mode for editing Vala code." t)
(add-to-list 'auto-mode-alist '("\\.vala$" . vala-mode))
(add-to-list 'auto-mode-alist '("\\.vapi$" . vala-mode))
(add-to-list 'file-coding-system-alist '("\\.vala$" . utf-8))
(add-to-list 'file-coding-system-alist '("\\.vapi$" . utf-8))

;; Shell-mode
(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on t)

;; Windmove lets you move point from window to window using Shift (or
;; Meta) and the arrow keys.
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings 'meta))

;; register convinience
(global-set-key (kbd "<f12>") (lambda (char)
				(interactive "cInsert Register:")
				(insert-register char 't)))

(global-set-key  (kbd "<C-f12>") (lambda (char)
				   (interactive "cCopy to Register:")
				   (copy-to-register char (region-beginning) (region-end))
				   (cua-cancel)))

(global-set-key (kbd "<C-S-f12>")  (lambda (char)
				     (interactive "cCut to Register:")
				     (copy-to-register char (region-beginning) (region-end))
				     (cua-delete-region)))

;; Display ASCII code
(when (featurep 'ascii)
  (global-set-key (kbd "C-c C-a") 'ascii-on)
  (global-set-key (kbd "C-c C-e") 'ascii-off))
