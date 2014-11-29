;;; rvm-unit-tests.el --- Test Suite for rvm.el

;; Copyright (C) 2010 Edward Paget

;; Author: Edward Paget <edward@cassetteta.pe>
;; URL: http://www.emacswiki.org/emacs/DockerEl
;; Version: 1.1
;; Created: 5 April 2010
;; Keywords: docker
;; EmacsWiki: DockerEl

;; This file is NOT part of GNU Emacs.

;;; License:

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Commentary:

;;; Code:

(ert-deftest docker-list-containers-test ()
  (should (equal '()
                 (docker--list-containers))))

