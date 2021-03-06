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

;;;; 2008-08-21 09:30:59

(in-package :common-lisp-user)

(defpackage :mlcl
  (:nicknames :mlcl :ml-dataset)
  (:use :cl)
  (:export  
    #|
    case
    |#
    |DatasetThing|
    |DatasetCase|
    |date|
    |time|
    dataset-thing-name-id
    dataset-case-id
    |time_year| 
    |time_month|
    |time_day| 
    |time_hour|
    |time_minute|
    |time_sec|
    |time_usec|
    time->usec
    #|
    dataset
    |#
    dataset
    dataset-name
    dataset-schema
    dataset-storage
    dataset-cases  
    dataset-add-case
    dataset-remove-case
    
    dataset-temporaryp
    dataset-import-case-from-kb
    
    #|
    schema
    |#
    schema
    schema-pathname
    schema-package
    schema-kb
    
    schema-name
    schema-load
    
    #|
    storage
    |#
    storage
    storage-file
    storage-cases
    storage-load
    storage-save
    storage-add-case
    storage-add-cases
    storage-remove-case
    
    #|
    workspace
    |#
    workspace
    workspace-file
    workspace-storage
    workspace-schema
    workspace-datasets
    workspace-algorithms
    
    workspace-load
    workspace-save
    
    workspace-make-dataset
    workspace-make-temporary-dataset
    workspace-case-import
    workspace-cases-import
    workspace-add-algorithm
    workspace-make-algorithms
    
    WORKSPACE-FIND-ALGORITHM
    workspace-find-dataset
    
    workspace-add-variable
    workspace-remove-variable
    
    #|
    arff
    |#
    
    arff->dataset-kb
    
    #|
    algorithm
    |#
    algorithm
    ALGORITHM-INIT-WORKSPACE
    trivial-algorithm
    algorithm-compiler
    trivial-algorithm-compiler
    algorithm-compiler-compile
   ))


