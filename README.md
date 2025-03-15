Err, ngl you'll have a better time of reading my emacs config if you go here [here](https://mahoosively.gay/emacs). 
##### Note to self
Get your org mode auto time complete setup from work (honestly probably time to merge your work and home configs together again, need to do corfu fixes on work setup sometime)

Resetup flipping solaire faces - but you need to go find what the face for the line number background is first, possibly do a PR to the doom theme repo (see below for what to do for face swapping) 
``` emacs-lisp
 (with-eval-after-load 'solaire-mode
   (add-to-list 'solaire-mode-themes-to-face-swap 'doom-tokyo-night))
```

