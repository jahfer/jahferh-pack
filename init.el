;; User pack init file
;;
;; Use this file to initiate the pack configuration.
;; See README for more information.

;; Package archives
(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; Load bindings config
(live-load-config-file "bindings.el")

;; Theme and visuals
;(load-file (concat (live-pack-lib-dir) "tomorrow-night-theme.el"))

(live-add-pack-lib "inkpot-theme.el")
(require 'inkpot-theme)

;; fix the modes you know
(add-to-list 'auto-mode-alist '("\\.coffee.erb\\'" . coffee-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.json_builder$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.watchr$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.notes" . org-mode))
(add-to-list 'auto-mode-alist '("\\.org" . org-mode))

;; Set scratch to org mode buffer
(switch-to-buffer (get-buffer-create (generate-new-buffer-name "*scratch-org*")))
(org-mode)

;; Change cursor style
(setq-default cursor-type '(bar . 1))
(blink-cursor-mode 1)
(setq-default cursor-in-non-selected-windows nil)

(global-linum-mode 1)
(global-visual-line-mode 1)
(setq-default left-fringe-width 10)

;; Margins!!
(defun toggle-margin-right ()
  "Toggle the right margin between `fill-column' or window width.
This command is convenient when reading novel, documentation."
  (interactive)
  (if (eq (cdr (window-margins)) nil)
      (set-window-margins nil 0 (- (window-body-width) fill-column))
    (set-window-margins nil 0 0) ) )

;;; Set localized PATH for OS X
(defun my-add-path (path-element)
  "Add the specified PATH-ELEMENT to the Emacs PATH."
  (interactive "DEnter directory to be added to path: ")
  (if (file-directory-p path-element)
     (progn
       (setenv "PATH" (concat (expand-file-name path-element) path-separator (getenv "PATH")))
       (add-to-list 'exec-path (expand-file-name path-element)))))

(if (fboundp 'my-add-path)
   (let ((my-paths (list "/opt/local/bin" "/usr/local/bin" "/usr/local/git/bin")))
      (dolist (path-to-add my-paths (getenv "PATH"))
         (my-add-path path-to-add))))

(setq-default mouse-wheel-scroll-amount '(1 ((shift) . 1)))
