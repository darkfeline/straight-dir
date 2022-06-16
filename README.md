# straight-dir

This package is obsoleted by https://github.com/radian-software/straight.el/issues/844


Provides a dir type for straight.el.  This is basically a dummy vc
implementation for packages you don't want straight.el to do
fetching on but still want to build.

An example use case is if you manage your dotfiles in ~/.git and
you have personal Emacs Lisp code.  You want to commit your
personal Emacs Lisp code to ~/.git and have straight.el manage
autoloads, byte compilation, and load-path.
