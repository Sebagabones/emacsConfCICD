
;;; $DOOMDIR/packages.el

;; To install a package with Doom you must declare them here and run 'doom sync'
;; on the command line, then restart Emacs for the changes to take effect -- or
;; use 'M-x doom/reload'.


;; To install SOME-PACKAGE from MELPA, ELPA or emacsmirror:
;; (package! some-package)
(package! corfu-terminal)
(package! nerd-icons-corfu)


(package! ace-jump-mode)
(package! rainbow-mode)
(package! avy)
(package! visual-regexp-steroids)
(package! clipetty)
(package! comment-dwim-2)
(package! lsp-pyright)
(package! catppuccin-theme)
(package! treesit-auto)
(package! apheleia)
(package! windsize)
(package! side-hustle)
(package! vagrant)
(package! vagrant-tramp)
(package! color-identifiers-mode)
(package! indent-bars)
(package! magit-delta)
(package! ccls)
(package! flycheck-flawfinder)

(package! tera-mode
  :recipe (:host github :repo "svavs/tera-mode"))
(package! eee
  :recipe (:host github :repo "Sebagabones/eee.el"
           :files (:defaults "*.el" "*.sh")))
(package! astro-ts-mode
  :recipe (:host github :repo"Sorixelle/astro-ts-mode"))
(package! consult-tramp
  :recipe (:host github :repo"Ladicle/consult-tramp"))
(package! uncrustify-mode
  :recipe (:host github :repo"koko1000ban/emacs-uncrustify-mode"))
(package! corfu-doc-terminal            ;note emacs 31 should make this redundant yippee - also note I don't think I even use corfu anymore
  :recipe   (:type git
             :repo "https://codeberg.org/akib/emacs-corfu-doc-terminal.git"))
(package! simple-comment-markup
  :recipe (:type git
           :repo "https://code.tecosaur.net/tec/simple-comment-markup.git"))

;; (package! lsp-ui)
;; To install a package directly from a remote git repo, you must specify a
;; `:recipe'. You'll find documentation on what `:recipe' accepts here:
;; https://github.com/radian-software/straight.el#the-recipe-format
;; (package! another-package
;;   :recipe (:host github :repo "username/repo"))

;; If the package you are trying to install does not contain a PACKAGENAME.el
;; file, or is located in a subdirectory of the repo, you'll need to specify
;; `:files' in the `:recipe':
;; (package! this-package
;;   :recipe (:host github :repo "username/repo"
;;            :files ("some-file.el" "src/lisp/*.el")))

;; If you'd like to disable a package included with Doom, you can do so here
;; with the `:disable' property:
;; (package! builtin-package :disable t)

;; You can override the recipe of a built in package without having to specify
;; all the properties for `:recipe'. These will inherit the rest of its recipe
;; from Doom or MELPA/ELPA/Emacsmirror:
;; (package! builtin-package :recipe (:nonrecursive t))
;; (package! builtin-package-2 :recipe (:repo "myfork/package"))

;; Specify a `:branch' to install a package from a particular branch or tag.
;; This is required for some packages whose default branch isn't 'master' (which
;; our package manager can't deal with; see radian-software/straight.el#279)
;; (package! builtin-package :recipe (:branch "develop"))

;; Use `:pin' to specify a particular commit to install.
;; (package! builtin-package :pin "1a2b3c4d5e")


;; Doom's packages are pinned to a specific commit and updated from release to
;; release. The `unpin!' macro allows you to unpin single packages...
;; (unpin! pinned-package)
;; ...or multiple packages
;; (unpin! pinned-package another-pinned-package)
;; ...Or *all* packages (NOT RECOMMENDED; will likely break things)
;; (unpin! t)
