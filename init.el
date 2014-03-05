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
(load-file (concat (live-pack-lib-dir) "tomorrow-night-theme.el"))

;; fix the modes you know
(add-to-list 'auto-mode-alist '("\\.coffee.erb\\'" . coffee-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.json_builder$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.watchr$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))
