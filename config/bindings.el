(setq mac-command-modifier 'super) ; sets the Command key to Meta

;; Helm
(define-key global-map (kbd "C-c h") 'helm-mini)

;; Buffers
(define-key global-map (kbd "s-]") 'next-buffer)
(define-key global-map (kbd "s-[") 'previous-buffer)
