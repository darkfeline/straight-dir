;;; straight-dir.el --- dir type for straight.el     -*- lexical-binding: t; -*-

;; Copyright (C) 2022  Allen Li

;; Author: Allen Li <darkfeline@felesatra.moe>
;; Keywords: extensions

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; Provides a dir type for straight.el.  This is basically a dummy vc
;; implementation for packages you don't want straight.el to do
;; fetching on but still want to build.

;; An example use case is if you manage your dotfiles in ~/.git and
;; you have personal Emacs Lisp code.  You want to commit your
;; personal Emacs Lisp code to ~/.git and have straight.el manage
;; autoloads, byte compilation, and load-path.

;;; Code:

;;;###autoload
(defun straight-vc-dir-get-commit (_local-repo)
  "Get the currently checked-out commit object, given LOCAL-REPO name string.
Returns nil to disable VC operations."
  nil)

;;;###autoload
(defun straight-vc-dir-local-repo-name (_recipe)
  "Generate a repository name from straight.el-style RECIPE.
Returns nil to use the package name as the default."
  nil)

;;;###autoload
(defun straight-vc-dir-keywords ()
  "Return a list of keywords used by the dir VC backend."
  nil)

;;;###autoload
(defun straight-vc-dir-push-to-remote (_recipe)
  "Using straight.el-style RECIPE, push to primary remote, if necessary."
  nil)

(provide 'straight-dir)
;;; straight-dir.el ends here
