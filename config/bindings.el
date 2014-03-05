;; Helm
(define-key global-map (kbd "C-c h") 'helm-mini)

;; Buffers
(define-key global-map (kbd "s-]") 'next-buffer)
(define-key global-map (kbd "s-[") 'previous-buffer)

;; Settings
(define-key global-map (kbd "C-,") 'open-config-file)
