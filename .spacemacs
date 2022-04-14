;; -*- mode: emacs-lisp; lexical-binding: t -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  (setq-default
   dotspacemacs-distribution 'spacemacs
   dotspacemacs-enable-lazy-installation 'unused
   dotspacemacs-ask-for-lazy-installation t
   dotspacemacs-configuration-layer-path '()
   dotspacemacs-configuration-layers
   '(
     (python :variables
             python-fill-column 80
             python-test-runner '(pytest nose))
     dart
     (javascript :variables
                 javascript-backend 'lsp
                 javascript-fmt-tool 'web-beautify
                 javascript-repl 'skewer
                 node-add-modules-path t)
          (typescript :variables
                 typescript-backend 'lsp)
     (better-defaults :variables
                      better-defaults-move-to-beginning-of-first t
                      better-defaults-move-to-end-of-first t)
     (ibuffer :variables
              ibuffer-group-buffers-by 'projects)
     (lsp :variables lsp-lens-enable t
          lsp-use-lsp-ui t)
     restclient
     git
     helm
     epub
     pdf
     multiple-cursors
     org
     (spell-checking :variables
                     spell-checking-enable-by-default nil
                     spell-checking-enable-auto-dictionary t)
     syntax-checking
     semantic
     major-modes
     emacs-lisp
     scheme
     graphviz
     yaml
     shell-scripts
     (shell :variables
            shell-default-height 40
            shell-default-position 'bottom
            shell-default-shell 'eshell)
     (html :variables
           web-fmt-tool 'web-beautify
           css-enable-lsp t
           less-enable-lsp t
           scss-enable-lsp t
           html-enable-lsp t)
     (json :variables
           json-fmt-tool 'web-beautify)
     (markdown :variables
               markdown-live-preview-engine 'vmd
               markdown-mmm-auto-modes '("c"
                                         "c++"
                                         "python"
                                         "rust"
                                         ("elisp" "emacs-lisp")))
     (treemacs :variables
               treemacs-use-follow-mode t
               treemacs-use-filewatch-mode t)
     ;;---------------------------------end layer
     )


   dotspacemacs-additional-packages '(bongo)
   dotspacemacs-frozen-packages '()
   dotspacemacs-install-packages 'used-only
  )
)

(defun dotspacemacs/init ()
  (setq-default
   dotspacemacs-enable-emacs-pdumper nil
   dotspacemacs-emacs-pdumper-executable-file "emacs"
   dotspacemacs-emacs-dumper-dump-file (format "spacemacs-%s.pdmp" emacs-version)
   dotspacemacs-elpa-https t
   dotspacemacs-elpa-timeout 5
   dotspacemacs-gc-cons '(100000000 0.1)
   dotspacemacs-read-process-output-max (* 1024 1024)
   dotspacemacs-use-spacelpa nil
   dotspacemacs-verify-spacelpa-archives t
   dotspacemacs-check-for-update nil
   dotspacemacs-elpa-subdirectory 'emacs-version
   dotspacemacs-editing-style 'vim
   dotspacemacs-startup-buffer-show-version t
   dotspacemacs-startup-banner 'official
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   dotspacemacs-startup-buffer-responsive t
   dotspacemacs-show-startup-list-numbers t
   dotspacemacs-startup-buffer-multi-digit-delay 0.4
   dotspacemacs-startup-buffer-show-icons nil
   dotspacemacs-new-empty-buffer-major-mode 'text-mode
   dotspacemacs-scratch-mode 'text-mode
   dotspacemacs-scratch-buffer-persistent nil
   dotspacemacs-scratch-buffer-unkillable nil
   dotspacemacs-initial-scratch-message nil

   ;;------------------------- theme config -------------------------------------
   dotspacemacs-themes '(ir-black
                         spacemacs-dark
                         spacemacs-light)
   ;;----------------------------------------------------------------------------


   dotspacemacs-mode-line-theme '(spacemacs :separator wave :separator-scale 1.5)
   dotspacemacs-colorize-cursor-according-to-state t

   ;;-------------------------- font config -------------------------------------
   dotspacemacs-default-font '("Source Code Pro"
                               :size 13.0
                               :weight normal 
                               :width normal)
   ;;----------------------------------------------------------------------------


   dotspacemacs-leader-key "SPC"
   dotspacemacs-emacs-command-key "SPC"
   dotspacemacs-ex-command-key ":"
   dotspacemacs-emacs-leader-key "M-m"
   dotspacemacs-major-mode-leader-key ","
   dotspacemacs-major-mode-emacs-leader-key (if window-system "<M-return>" "C-M-m")
   dotspacemacs-distinguish-gui-tab nil
   dotspacemacs-default-layout-name "Default"
   dotspacemacs-display-default-layout nil
   dotspacemacs-auto-resume-layouts nil
   dotspacemacs-auto-generate-layout-names nil
   dotspacemacs-large-file-size 1
   dotspacemacs-auto-save-file-location 'cache
   dotspacemacs-max-rollback-slots 5
   dotspacemacs-enable-paste-transient-state nil
   dotspacemacs-which-key-delay 0.4
   dotspacemacs-which-key-position 'bottom
   dotspacemacs-switch-to-buffer-prefers-purpose nil
   dotspacemacs-loading-progress-bar t
   dotspacemacs-fullscreen-at-startup nil
   dotspacemacs-fullscreen-use-non-native nil
   dotspacemacs-maximized-at-startup nil
   dotspacemacs-undecorated-at-startup nil

   ;;--------------------- transparency config -------------------------------------
   dotspacemacs-active-transparency 60
   dotspacemacs-inactive-transparency 60
   ;;-------------------------------------------------------------------------------

   dotspacemacs-show-transient-state-title t
   dotspacemacs-show-transient-state-color-guide t
   dotspacemacs-mode-line-unicode-symbols t
   dotspacemacs-smooth-scrolling t
   dotspacemacs-scroll-bar-while-scrolling t
   dotspacemacs-line-numbers nil
   dotspacemacs-folding-method 'evil
   dotspacemacs-smartparens-strict-mode nil
   dotspacemacs-activate-smartparens-mode t
   dotspacemacs-smart-closing-parenthesis nil
   dotspacemacs-highlight-delimiters 'all
   dotspacemacs-enable-server nil
   dotspacemacs-server-socket-dir nil
   dotspacemacs-persistent-server nil
   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")
   dotspacemacs-frame-title-format "%I@%S"
   dotspacemacs-icon-title-format nil
   dotspacemacs-show-trailing-whitespace t
   dotspacemacs-whitespace-cleanup nil
   dotspacemacs-use-clean-aindent-mode t
   dotspacemacs-use-SPC-as-y nil
   dotspacemacs-swap-number-row nil
   dotspacemacs-zone-out-when-idle nil
   dotspacemacs-pretty-docs nil
   dotspacemacs-home-shorten-agenda-source nil
   dotspacemacs-byte-compile nil
 )
)

(defun dotspacemacs/user-env ()
  (spacemacs/load-spacemacs-env)
)

(defun dotspacemacs/user-init ())

(defun dotspacemacs/user-load ())

;;------------------------ user config -------------------------------------
(defun dotspacemacs/user-config ()
  (setq-default evil-escape-key-sequence "jk")
  (setq-default evil-escape-mode)
  (spacemacs/enable-transparency)
  (add-hook 'after-make-frame-functions 'spacemacs/enable-transparency)
  (add-hook 'hack-local-variables-hook (lambda () (setq truncate-lines t)))
  (spacemacs/set-leader-keys (kbd "ef") 'lsp-execute-code-action)
)
;;--------------------------------------------------------------------------



(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("45e76a1b1e3bd74adb03192bf8d6eea2e469a1cf6f60088b99d57f1374d77a04" default))
 '(evil-want-Y-yank-to-eol nil)
 '(package-selected-packages
   '(restclient-helm ob-restclient ob-http company-restclient restclient know-your-http-well bongo yasnippet-snippets yapfify yaml-mode xterm-color ws-butler writeroom-mode wolfram-mode winum which-key web-mode web-beautify vterm volatile-highlights vmd-mode vi-tilde-fringe vala-snippets vala-mode uuidgen use-package unfill undo-tree treemacs-projectile treemacs-persp treemacs-magit treemacs-icons-dired treemacs-evil toc-org tide thrift terminal-here tagedit symon symbol-overlay string-inflection string-edit stickyfunc-enhance stan-mode srefactor sphinx-doc spaceline-all-the-icons smeargle slim-mode shell-pop scss-mode scad-mode sass-mode restart-emacs request rainbow-delimiters quickrun qml-mode pytest pyenv-mode pydoc py-isort pug-mode prettier-js popwin poetry pkgbuild-mode pippel pipenv pip-requirements pdf-view-restore pcre2el password-generator paradox overseer orgit-forge org-superstar org-rich-yank org-projectile org-present org-pomodoro org-mime org-download org-contrib org-cliplink open-junk-file npm-mode nov nose nodejs-repl nameless mwim multi-term multi-line mmm-mode matlab-mode markdown-toc macrostep lsp-ui lsp-python-ms lsp-pyright lsp-origami lsp-dart lorem-ipsum logcat livid-mode live-py-mode link-hint json-reformat json-navigator json-mode js2-refactor js-doc ir-black-theme inspector insert-shebang info+ indent-guide importmagic impatient-mode ibuffer-projectile hybrid-mode hungry-delete hoon-mode hl-todo highlight-parentheses highlight-numbers highlight-indentation hide-comnt helm-xref helm-themes helm-swoop helm-pydoc helm-purpose helm-projectile helm-org-rifle helm-org helm-mode-manager helm-make helm-lsp helm-ls-git helm-git-grep helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag graphviz-dot-mode google-translate golden-ratio gnuplot gitignore-templates git-timemachine git-modes git-messenger git-link gh-md geiser fuzzy font-lock+ flyspell-correct-helm flycheck-pos-tip flycheck-package flycheck-elsa flycheck-bashate flx-ido flutter fish-mode fancy-battery eyebrowse expand-region evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-textobj-line evil-terminal-cursor-changer evil-surround evil-org evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state evil-lion evil-indent-plus evil-iedit-state evil-goggles evil-exchange evil-escape evil-ediff evil-easymotion evil-collection evil-cleverparens evil-args evil-anzu eval-sexp-fu eshell-z eshell-prompt-extras esh-help emr emmet-mode elisp-slime-nav elisp-def editorconfig ebuild-mode dumb-jump drag-stuff dotenv-mode dired-quick-sort diminish devdocs define-word cython-mode company-web company-shell company-anaconda column-enforce-mode clean-aindent-mode centered-cursor-mode blacken auto-yasnippet auto-highlight-symbol auto-dictionary auto-compile arduino-mode aggressive-indent add-node-modules-path ace-link ace-jump-helm-line ac-ispell)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(highlight-parentheses-highlight ((nil (:weight ultra-bold))) t))
)
