;;;
;;; MaLeCoLi
;;; Copyright (C) 2008 Alessandro Serra
;;; 
;;; This program is free software: you can redistribute it and/or modify
;;; it under the terms of the GNU General Public License as published by
;;; the Free Software Foundation, either version 3 of the License, or
;;; (at your option) any later version.
;;; 
;;; This program is distributed in the hope that it will be useful,
;;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;; GNU General Public License for more details.
;;; 
;;; You should have received a copy of the GNU General Public License
;;; along with this program.  If not, see <http://www.gnu.org/licenses/>.
;;;

;;;; Created on 2008-09-02 11:34:54

(in-package :cl-kb)

;
; import/export functions
;
                        
(defun kb-import-from-protege-file (pprj-file xml-file &optional (kb *kb*))
;  (check-type pprj-file (or nil pathname))
;  (check-type xml-file (or nil pathname))
  (check-type kb kb)
  (if pprj-file
      (progn
        (kb-import-from-protege-pprj pprj-file kb)
        (if (and (kb-protege-xml-file kb) (not (equal (kb-protege-xml-file kb) xml-file)))
            (kb-import-from-protege-xml (kb-protege-xml-file kb) kb))))
  (if xml-file
      (kb-import-from-protege-xml xml-file kb)))

(defun kb-export-to-protege-file (pprj-file xml-file &optional (kb *kb*) (xml-supersedep t) (pprj-supersedep nil))
  (check-type pprj-file pathname)
  (check-type xml-file pathname)
  (check-type kb kb)
  (kb-export-to-protege-pprj pprj-file
                             xml-file
                             kb :supersedep pprj-supersedep)
  (kb-export-to-protege-xml xml-file 
                            kb :supersedep xml-supersedep))

