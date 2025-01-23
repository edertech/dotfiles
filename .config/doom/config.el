
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-palenight)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")


;; Whenever the window scrolls a light will shine on top of your cursor so you know where it is.
(setq beacon-mode 1)


;;--------------------------
;; Projectile
;;--------------------------
;;
(projectile-mode +1)


;;--------------------------
;; TypeScript | JSX
;;--------------------------

;; Associate .tsx files to typescript-mode
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . typescript-mode))

;; Activate flycheck to TypeScript
(after! typescript-mode
  (add-hook 'typescript-mode-hook #'flycheck-mode))

;; Set indentation level to TypeScript
(setq typescript-indent-level 2)


;;--------------------------
;; TypeScript | Angular
;;--------------------------

;; Associate .tsx files to typescript-mode
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . typescript-mode))
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))

;; Activate flycheck to TypeScript
(after! typescript-mode
  (add-hook 'typescript-mode-hook #'flycheck-mode))

;; Activate LSP to TypeScript
(after! lsp-mode
  (setq lsp-clients-typescript-server-args '("--stdio"))
  (add-hook 'typescript-mode-hook #'lsp)
  (add-hook 'web-mode-hook #'lsp))

;; web-mode config
(use-package web-mode
  :mode ("\\.html\\'" . web-mode)
  :config
  (setq web-mode-enable-auto-pairing t)
  (setq web-mode-enable-css-colorization t)
  (setq web-mode-enable-current-element-highlight t))

;; Set indentation level to TypeScript
(setq typescript-indent-level 2)
(setq web-mode-markup-indent-offset 2)


;;--------------------------
;; Others
;;--------------------------
;;

;; dictionaries
(setq ispell-program-name "hunspell")
(setq ispell-dictionary "english")  ;; Define o padrão como inglês
(setq ispell-hunspell-dict-paths-alist
      '(("portuguese-brazil" "/usr/share/hunspell/pt_BR.dic" "/usr/share/hunspell/pt_BR.aff")))

(add-hook 'org-mode-hook
          (lambda ()
            (let ((dict (or (cdr (assoc "ispell-dictionary" (org-babel-get-header "ispell-dictionary")))
                            "english")))  ;; Padrão para inglês
              (setq ispell-dictionary dict)
              (flyspell-mode 1))))

