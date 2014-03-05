(setq mac-command-modifier 'super) ; sets the Command key to Meta

;; Helm
(define-key global-map (kbd "C-p") 'helm-ls-git-ls)

;; Buffers
(define-key global-map (kbd "s-]") 'next-buffer)
(define-key global-map (kbd "s-[") 'previous-buffer)
