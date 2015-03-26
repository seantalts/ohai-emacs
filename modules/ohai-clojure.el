;;; -*- lexical-binding: t -*-
;;; ohai-clojure.el --- If you like your parentheses Java flavoured.

;; Copyright (C) 2015 Bodil Stokke

;; Author: Bodil Stokke <bodil@bodil.org>

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Code:

(package-require 'clojure-mode)

;; We'll also be using clj-refactor for refactoring support.
(package-require 'clj-refactor)

;; We might need Paredit too if that's how you like it.
(package-require 'paredit)

;; Setup
(add-hook
 'clojure-mode-hook
 (lambda ()
   (when ohai-personal-taste/paredit (paredit-mode))
   (clj-refactor-mode 1)))

(with-eval-after-load "clojure-mode"
  ;; Define the keybinding prefix for clj-refactor commands.
  ;; From there, see https://github.com/clojure-emacs/clj-refactor.el#usage
  (cljr-add-keybindings-with-prefix "C-c C-m"))

(provide 'ohai-clojure)
;;; ohai-clojure.el ends here
