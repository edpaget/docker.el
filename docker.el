;;; docker.el --- Emacs integration for rvm
;;
;; Copyright (C) 2010-2011 Edward Paget
;; Author: Edward Paget <edward@cassetteta.pe>
;; URL: http://www.emacswiki.org/emacs/DockerEl
;; Version: 0.0.1
;; Created: 15 November 2014
;; Keywords: docker
;; EmacsWiki: DockerEl
;;
;; This file is NOT part of GNU Emacs.
;;
;;; License:
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING. If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Compiler support:

(eval-when-compile
  (require 'cl))

(require 'request)

(require 'require-deferred)

(defcustom docker-daemon-location
  "http://localhost:8181"
  "Protocol and location of the docker daemon"
  :group 'docker
  :type 'string)

(defun docker/request (type location &rest params)
  (deferred:$
    (request-deferred
     (docker/request-url location params)
     :parser 'buffer-string
     :type type)))

(defun docker/request-url (location params)
  )

(defun docker--then (promise success failure)
  "Sets Success or Failure on a promise and returns a new promise"
  promise)

(defn docker/request)

(defun docker--list-containers ()
  "Fetch a list of running docker containers"
  (request
   (concat docker-daemon-location "/containers/json")
   :type "GET"
   :parser 'buffer-string
   :sync t
   :error (function*
           (lambda (&rest _)
             (message "errored")))
   :success (function*
             (lambda (&key data &allow-other-keys)
               (message "Found %S containers" (length data))))))

(provide 'docker)
;;; docker.el ends here
