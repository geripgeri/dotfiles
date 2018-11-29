(package-initialize)
(prefer-coding-system 'utf-8)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

;; Setup Server-Client mode
(require 'server)
(unless (server-running-p)
  (server-start))


(defun reload-init-file ()
  (interactive)
  (load-file user-init-file))

(global-set-key (kbd "C-c C-l") 'reload-init-file)    ; Reload .emacs file

;; Theme related
(require 'solarized)
(deftheme solarized-dark "The dark variant of the Solarized colour theme")
(create-solarized-theme 'dark 'solarized-dark)
(provide-theme 'solarized-dark)

(setq custom-safe-themes t)
(require 'powerline)
(require 'airline-themes)
(load-theme 'airline-wombat)
(setq powerline-utf-8-separator-left        #xe0b0
      powerline-utf-8-separator-right       #xe0b2
      airline-utf-glyph-separator-left      #xe0b0
      airline-utf-glyph-separator-right     #xe0b2
      airline-utf-glyph-subseparator-left   #xe0b1
      airline-utf-glyph-subseparator-right  #xe0b3
      airline-utf-glyph-branch              #xe0a0
      airline-utf-glyph-readonly            #xe0a2
      airline-utf-glyph-linenumber          #xe0a1)


;; Global mode switches, default values
(desktop-save-mode 1)
(savehist-mode 1)
(scroll-bar-mode -1)
(global-linum-mode 1)
(global-hl-line-mode +1)
(show-paren-mode t)
(setq show-paren-style 'parenthesis)
(setq multi-term-program "/bin/zsh")
(setq vc-follow-symlinks t)
(setq read-file-name-completion-ignore-case t)

(add-hook 'css-mode-hook 'xah-css-mode)
(add-hook 'html-mode-hook 'xah-css-mode)

(add-hook 'python-mode-hook
      (lambda ()
        (setq indent-tabs-mode t)
        (setq tab-width 4)
        (setq python-indent-offset 4)))


(require 'all-the-icons)
(require 'neotree)

(global-set-key [f8] 'neotree-toggle)
(setq-default neo-show-hidden-files t)
(setq neo-smart-open t)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))

(require 'magit)
(global-set-key (kbd "C-x g") 'magit-status)
(magit-define-popup-option 'magit-commit-popup
  ?D "Override date" "--date=" #'read-from-minibuffer)

(global-set-key [f7] (lambda () (interactive) (multi-term-dedicated-toggle) (multi-term-dedicated-select)))

(defvar-local is-new-file-buffer nil)
(defun save-new-file-before-kill ()
  (when (and (not (buffer-file-name))
             is-new-file-buffer
             (yes-or-no-p
              "New file has not been saved. Would you like to save before closing?"))
    (call-interactively 'save-buffer)))

(add-hook 'kill-buffer-hook 'save-new-file-before-kill)

(defun new-file (dir)
  (interactive "Create New File In: ")
  (let ((buffer (generate-new-buffer "<Unsaved File>")))
    (switch-to-buffer buffer)
    (setq-local default-directory dir)
    (setq-local is-new-file-buffer t)))
(global-set-key (kbd "C-c n") #'new-file)
