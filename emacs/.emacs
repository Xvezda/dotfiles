;;; -*- lexical-binding: t -*-
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(gruber-darker))
 '(custom-safe-themes
   '("01a9797244146bbae39b18ef37e6f2ca5bebded90d9fe3a2f342a9e863aaa4fd"
     "e13beeb34b932f309fb2c360a04a460821ca99fe58f69e65557d6c1b10ba18c7"
     default))
 '(display-line-numbers-type 'relative)
 '(global-display-line-numbers-mode t)
 '(hindent-reformat-buffer-on-save t)
 '(ido-mode 'file nil (ido))
 '(indent-tabs-mode nil)
 '(package-selected-packages
   '(exec-path-from-shell go-mode gruber-darker-theme haskell-mode
                          hindent magit multiple-cursors paredit
                          rust-mode slime wakatime-mode xterm-color))
 '(tool-bar-mode nil))

; Suppress warnings
; https://emacs.stackexchange.com/a/85974
(define-advice display-warning
    (:around (orig-fun type &rest args) silence-missing-lexical-binding-cookie)
  "Silence warnings about missing lexical-binding cookies."
  (if (memq 'missing-lexbind-cookie type)
      t
    (apply orig-fun type args)))
; https://www.reddit.com/r/emacs/comments/1uy4xid/comment/p5uqq8x/
(when (eq system-type 'darwin)
  (setenv "MACOSX_DEPLOYMENT_TARGET" "27.0"))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "D2Coding" :foundry "nil" :slant normal :weight regular :height 180 :width normal)))))
(setq-default tab-width 4
              indent-tabs-mode nil
              default-input-method "korean-hangul"
              compilation-scroll-output)

; Source - https://stackoverflow.com/a/25164056
; Posted by Gordon Gustafson, modified by community. See post 'Timeline' for change history
; Retrieved 2026-10-17, License - CC BY-SA 3.0
(defadvice align-regexp (around align-regexp-with-spaces activate)
  (let ((indent-tabs-mode nil))
    ad-do-it))

(require 'ansi-color)
(defun my/ansi-color-compilation-filter ()
  (let ((inhibit-read-only t))
    (ansi-color-apply-on-region (point-min) (point-max))))

(add-hook 'compilation-filter-hook 'my/ansi-color-compilation-filter)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(setq inferior-lisp-program "sbcl")
(require 'slime)
(slime-setup '(slime-fancy))

(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(require 'hindent)
(add-hook 'haskell-mode-hook #'hindent-mode)

(require 'paredit)
(add-hook 'lisp-mode-hook 'enable-paredit-mode)

(global-wakatime-mode)
