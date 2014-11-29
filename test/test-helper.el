(require 'f)

(defvar docker-test/test-path
  (f-parent (f-this-file)))

(defvar docker-test/root-path
  (f-parent docker-test/test-path))

(setq docker-verbose nil)

(unless (require 'ert nil 'no-error)
  (require 'ert (f-expand "docker" docker-test/test-path)))

(require 'docker (f-expand "docker" docker-test/root-path))
