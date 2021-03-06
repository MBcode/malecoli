;;;; 2008-08-21 11:50:25

(defpackage #:mlcl-cbr-asd
  (:use :cl :asdf))

(in-package :mlcl-cbr-asd)

(defsystem mlcl-cbr
  :name "mlcl-cbr"
  :version "0.1"
  :components ((:module package
               	:components
	        	((:file "defpackage" :depends-on ())))
               (:module resources
               	:components
	        	((:file "resource" :depends-on ()))
                :depends-on ("package"))	           
               (:module cbr
               	:components
	        	((:file "cbr" :depends-on ()))
                 :depends-on ("package" "resources")))
  :depends-on ("mlcl-knn"))
