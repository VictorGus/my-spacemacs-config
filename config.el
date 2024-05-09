;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
;; (setq user-full-name "John Doe"
;;       user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-symbol-font' -- for symbols
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

(setq treemacs-width 35)

;; (with-eval-after-load 'doom-themes
;;   (doom-themes-treemacs-config))

(use-package treemacs-nerd-icons
  :after treemacs
  :config
  (treemacs-load-theme "nerd-icons"))

(map! :nvi
      "f" nil)

;; (map! :leader
;;       :n
;;       :desc "Neotree open"
;;       "f t" #'neotree-show)

(map! :leader
      :n
      :desc "Treemacs open"
      "f t" #'treemacs)

;; Custom bindings
(map! :leader
      :n
      :after clojure
      :map clojure-mode-map
      :desc "Cider connect clj"
      "s c" #'cider-connect-clj)

(map! :leader
      :n
      :after clojure
      :map clojure-mode-map
      :desc "Cider switch to REPL buffer"
      "s a" #'cider-switch-to-repl-buffer)

(map! :leader
      :n
      :after clojure
      :map clojure-mode-map
      :desc "Cider eval current buffer"
      "e b" #'cider-eval-buffer)

(map! :leader
      :n
      :after clojure
      :map clojure-mode-map
      :desc "Cider eval last sexp"
      "e e" #'cider-eval-last-sexp)

(map! :leader
      :n
      :after clojure
      :map clojure-mode-map
      :desc "Cider eval last sexp"
      "e e" #'cider-eval-last-sexp)

(map! :leader
      :n
      :after clojure
      :map clojure-mode-map
      :desc "Cider eval last sexp"
      "e f" #'cider-eval-defun-at-point)

(map! :leader
      :n
      :desc "Slurp forward sexp"
      "k s" #'sp-forward-slurp-sexp)

(map! :leader
      :n
      :desc "Slurp forward sexp"
      "k s" #'sp-forward-slurp-sexp)

(map! :leader
      :n
      :desc "Copy sexp"
      "k y" #'sp-copy-sexp)

(map! :leader
      :n
      :desc "Delete sexp"
      "k d" #'sp-delete-sexp)

(map! :leader
      :n
      :desc "Unwrap sexp"
      "k W" #'sp-unwrap-sexp)

(map! :leader
      :n
      :desc "Wrap with round parenthes sexp"
      "k w" #'sp-wrap-round)

(map! :leader
      :n
      :desc "Show errors in the current buffer"
      "l e" #'flycheck-list-errors)

(map! :leader
      :n
      :desc "Go to definition"
      "l g" #'evil-goto-definition)

(map! :leader
      :n
      :desc "Split window right"
      "w /" #'split-window-right)

(add-hook! clojure-mode-hook #'(evil-cleverparens-mode
                                evil-smartparens-mode))

;; (map! :leader
;;       :n
;;       :desc "Clojure sexp slurp forward"
;;       "k s" #'cider-eval-last-sexp)

;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
