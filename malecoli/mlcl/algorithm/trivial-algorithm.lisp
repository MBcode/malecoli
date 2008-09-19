;;;; Created on 2008-09-18 16:55:34

(in-package :mlcl)

(defclass trivial-algorithm (algorithm)
  ())

(defclass trivial-algorithm-compiler (algorithm-compiler)
  ())

(defmethod algorithm-compiler-compile 
  ((algorithm-compiler trivial-algorithm-compiler) algo-frame)
  (format t "CIAO!!! ~A ~%" (cl-kb:frame-name algo-frame)))