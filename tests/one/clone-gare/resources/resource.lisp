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

;;;; Created on 2008-09-12 11:06:01

(in-package :clone-ml)

(push (if cl-kb::*cusp-developmentp* 
          #p"/hardmnt/tharpe0/sra/serra/Software/Developing/MaLeCoLi/code.google.com/workspace/malecoli-trunk/tests/one/clone-ml/resources/"
          ;#p"/home/alex/Software/Developing/MaLeCoLi/code.google.com/workspace/malecoli-trunk/tests/one/clone-ml/resources/"
          *load-truename*)
      cl-kb:*kb-paths*)


(eval-when (:LOAD-TOPLEVEL :EXECUTE)
  (if (null (cl-kb:find-kb "gare" nil))
        (cl-kb:make-kb (cl-kb:find-kb-file "gare"))))



(eval-when (:LOAD-TOPLEVEL :EXECUTE)
  (if (null (cl-kb:find-kb "gare-instances" nil))
        (cl-kb:make-kb 
         #p"/hardmnt/tharpe0/sra/serra/Software/Developing/MaLeCoLi/workspace/extra/gare/resources/gare-instances.pprj"
         )))

