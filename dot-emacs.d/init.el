;; Yg Song
;; OSX Yosemite Ver10.10.2, GNU Emacs Ver24.4.1

(setq make-backup-files nil)
(setq scroll-step 1)

(require 'ido)
(ido-mode t)

;; Python mode
;; https://launchpad.net/python-mode
(setq py-install-directory "~/.emacs.d/plugins/python-mode.el-6.2.0")
(add-to-list 'load-path py-install-directory)
(require 'python-mode)
;; use IPython
(setq py-shell-name "ipython")

;; autocomplete
;; http://emacswiki.org/emacs/AutoComplete
;; http://auto-complete.org/
;;  brew install cask
;;  make install DIR=$HOME/.emacs.d/plugins/auto-complete
(add-to-list 'load-path "~/.emacs.d/plugins/popup")
(add-to-list 'load-path "~/.emacs.d/plugins/auto-complete")
(require 'auto-complete-config)
(ac-config-default)

;; ruby mode
;; https://github.com/ruby/ruby/tree/trunk/misc
(add-to-list 'load-path "~/.emacs.d/plugins/ruby-mode")
(require 'ruby-mode)
(require 'rdoc-mode)
(add-to-list 'auto-mode-alist '("\\.rdoc\\'" . rdoc-mode))

;; Markdown mode
;; http://jblevins.org/projects/markdown-mode/
(add-to-list 'load-path "~/.emacs.d/plugins/markdown-mode")
(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; erlang mode
;; https://github.com/erlang/otp/tree/maint/lib/tools/emacs
(add-to-list 'load-path "~/.emacs.d/plugins/erlang")
(setq erlang-root-dir "/usr/local/Cellar/erlang/17.4.1")
(setq exec-path (cons "/usr/local/Cellar/erlang/17.4.1/bin" exec-path))
(require 'erlang-start)

;; web-mode
;; http://web-mode.org
(add-to-list 'load-path "~/.emacs.d/plugins/web-mode")
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
;
;(add-to-list 'auto-mode-alist '("\\.api\\'" . web-mode))
;(add-to-list 'auto-mode-alist '("/some/react/path/*\\.js[x]?\\'" . web-mode))
(setq web-mode-content-types-alist
      '(("json" . "/some/path/*\\.api\\'")
	("xml"  . "/other/path/*\\.api\\'")
	("jsx"  . "/some/react/path/*\\.js[x]?\\'")))

(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
  )
(add-hook 'web-mode-hook  'my-web-mode-hook)


;; rust-lang
;; https://github.com/rust-lang/rust-mode
(add-to-list 'load-path "~/.emacs.d/plugins/rust-mode/")
(autoload 'rust-mode "rust-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

;; go-mode
;; https://github.com/dominikh/go-mode.el
(add-to-list 'load-path "~/.emacs.d/plugins/go-mode/")
(require 'go-mode-autoloads)

;; toml-mode
(add-to-list 'load-path "~/.emacs.d/plugins/toml-mode/")
(require 'toml-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
