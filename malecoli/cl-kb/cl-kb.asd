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

;;;; 2008-08-05 15:59:48

(defpackage #:cl-kb-asd
  (:use :cl :asdf))

(in-package :cl-kb-asd)

(defsystem cl-kb
  :name "cl-kb"
  :version "0.1"
  :components ((:module package
               	:components
	        	((:file "defpackage" :depends-on ())))
               (:module resources
               	:components
	        	((:file "resource" :depends-on ()))
                :depends-on ("package" "core"))		
               (:module core
               	:components
	        	((:file "frame" :depends-on ("kb-core"))
	        	 (:file "kb-core" :depends-on ()))
                 :depends-on ("package"))
               (:module kb
               	:components
	        	((:file "kb" :depends-on ())
	        	 (:file "kb-utility" :depends-on ("kb")))
                 :depends-on ("package" "core" "io"))
               (:module io
               	:components
	        	((:file "io" :depends-on ())
	        	 (:file "io-utils" :depends-on ())
	        	 (:file "xml" :depends-on ("pprj" "io" "io-utils"))
	        	 (:file "pprj" :depends-on ("io" "io-utils")))
                 :depends-on ("package" "core" "resources"))
               (:module protege
               	:components
	        	((:file "protege-kb" :depends-on ())
	        	 (:file "protege" :depends-on ("protege-kb"))
	        	 )
                :depends-on ("package" "core" "io" "resources" "kb"))
               )
  :depends-on ("s-xml" "cl-ppcre"))
