(setq mac-command-modifier 'super) ; sets the Command key to Meta

;; Helm
(define-key global-map (kbd "C-x C-f") 'helm-ls-git-ls)

;; Buffers
(define-key global-map (kbd "s-]") 'next-buffer)
(define-key global-map (kbd "s-[") 'previous-buffer)

;; Recent files
(define-key global-map (kbd "C-x C-r") 'helm-recentf)

(define-key global-map (kbd "C-s-f") 'fullscreen)
