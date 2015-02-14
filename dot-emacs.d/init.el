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
