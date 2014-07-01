;; help us emacs config - you're our only hope


;;; packages and modes and so on

;; establish package system
(require 'package)
(package-initialize)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; Interactively Do Things
(require 'ido)
(ido-mode t)

;; tree undo
(global-undo-tree-mode t)

;; auto-complete mode
(global-auto-complete-mode t)

;; elpy for python
(elpy-enable)


;;; keybindings

;; expand-region is that new hotness
(global-set-key (kbd "C-\\") 'er/expand-region)

;; maybe I'll want line numbers sometimes
(global-set-key (kbd "M-1") 'linum-mode)

;; dired at point is nice
(global-set-key (kbd "C-x C-j") 'dired-at-point)

;; from elpy guide guy; this is pretty cool
(define-key global-map (kbd "C-c o") 'iedit-mode)

;; set C-x g to magit
(global-set-key (kbd "C-x g") 'magit-status)

;; sometimes C-spc and C-@ don't work, so set mark this way too
(global-set-key (kbd "C-x 9") 'set-mark-command)

;; make C-h and M-h backspace; move help to C-x h
;; (on some systems, C-h already sends DEL)
(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "M-h") 'backward-kill-word)
(global-set-key (kbd "C-x h") 'help-command)

;; Prefer undo access and move upcase-word
(global-set-key (kbd "M-u") 'undo)
(global-set-key (kbd "C-x y") 'upcase-word)


;;; UI things for display

;; get rid of UI stuff (not sure all of these always apply)
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;; turn off highlight-indentation-mode by making it not load by default
(delete 'highlight-indentation-mode elpy-default-minor-modes)

;; improve status line
(setq column-number-mode t)

;; highlight the current line
(global-hl-line-mode t)

;; set a color scheme
(load-theme 'misterioso)


;;; UI things for interaction

;; One space after sentences. One.
(setq sentence-end-double-space nil)

;; Precise when moving to next lines
(setq scroll-step 1)

;; Allow region downcase w/ C-x C-l
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
