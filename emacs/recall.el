
;; Disable loading of "default.el" at startup
;; (setq inhibit-default-init t)

;; Disable emacs welcome screen
(setq inhibit-splash-screen t)

;; Don't save backup files
(setq make-backup-files nil)

;; Enable visual feedback on selections
(setq transient-mark-mode t)

;; default to better frame titles
(setq frame-title-format
      (concat  "%b - emacs@" (system-name)))

;; default to unified diffs
(setq diff-switches "-u")

;; Winner mode is a global minor mode. It allows to "undo" (and
;; "redo") changes in the window configuration with the keybindings
;; 'C-c left' and 'C-c right'.

;; Windmove defines windmove-{left,up,right, down}, for selection of
;; windows in a frame geometrically.  A set of default keybindings is
;; supplied: shift-{left,up,right,down}.

(when (fboundp 'winner-mode)
  (winner-mode)
  (windmove-default-keybindings 'meta))

;; Hide toolbar
(tool-bar-mode nil)

;; To be a server for emacsclient
(server-start)

;; Lua-mode
;; (add-to-list 'load-path "/path/to/lua-mode")
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))

;; Vala-mode
(add-to-list 'load-path (expand-file-name "~/.emacs.d"))
(autoload 'vala-mode "vala-mode" "Major mode for editing Vala code." t)
(add-to-list 'auto-mode-alist '("\\.vala$" . vala-mode))
(add-to-list 'auto-mode-alist '("\\.vapi$" . vala-mode))
(add-to-list 'file-coding-system-alist '("\\.vala$" . utf-8))
(add-to-list 'file-coding-system-alist '("\\.vapi$" . utf-8))

;; Shell-mode
(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on t)

;; Setup el-get
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil t)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(el-get 'sync)
