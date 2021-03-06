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

(in-package :common-lisp-user)

(defpackage :cl-kb
  (:nicknames :cl-kb :kb)
  (:use :cl)
  (:export
    #|
    KB's frames
    |#
    
    frame
    frame-kb
    frame-systemp
    frame-own-slot-values-list
    frame-name
    frame-equal
    frame-in-kb-p
    frame-own-slot-values
    frame-own-slot-value
    frame-do-own-slot-values-list
        
    instance
    instance-direct-types
    instance-add-direct-type
    instance-remove-direct-type
    instance-has-direct-type
    instance-has-type
    instance-direct-type
    
    cls
    cls-direct-superclses
    cls-direct-template-slots
    cls-direct-template-facet-values-list
    cls-direct-subclses
    cls-direct-instances
    cls-add-direct-supercls
    cls-remove-direct-supercls
    cls-has-direct-supercls
    cls-has-supercls
    cls-direct-supercls
    cls-add-direct-template-slot
    cls-direct-template-facet-values
    cls-direct-template-facet-value
    cls-do-instance-list
    cls-do-subcls-list
    cls-do-supercls-list
    
    slot
    slot-direct-superslots
    slot-direct-subslots
    slot-add-direct-superslot
    slot-remove-direct-superslot
    slot-has-direct-superslot
    slot-has-superslot
    slot-direct-superslot
    
    facet
    
    simple-instance
        
    find-frame 
    find-cls
    find-slot
    find-facet
    find-simple-instance
    
    #|
    |#
    get-cls
    get-slot
    get-facet
    get-simple-instance

        
    #|
    KB
    |#
    *kb*
    kb
    kb-name
    kb-package
    kb-use-list
    kb-protege-pprj-file
    kb-protege-xml-file
    
    kb-create
    kb-save
    kb-open
    kb-close
    kb-openedp
    kb-createdp
        
    kb-import-from-protege
    kb-export-to-protege
    
    make-kb
    delete-kb
    kb-clear
    
    find-kb
    use-kb
    unuse-kb

    kb-intern
    kb-unintern
    
    find-kb-file
    *kb-paths*
    *kb-default-path*
    #|
    Protege
    |# 
    concrete-value 
    abstract-value 
    any-type-value 
    boolean-type-value 
    float-type-value 
    integer-type-value 
    string-type-value 
    symbol-type-value 
    instance-type-value 
    cls-type-value
    
    cls-documentation
    cls-role
    cls-abstractp
    cls-concretep
    cls-constraints
    slot-documentation
    slot-value-type
    slot-minimum-cardinality
    slot-maximum-cardinality
    slot-minimum-value
    slot-maximum-value
    slot-defaults
    slot-values
    slot-inverse-slot
    slot-allowed-clses
    slot-allowed-parents
    slot-allowed-values
    slot-constraints
    slot-associated-facet
    facet-documentation
    facet-associated-slot
    
    frame-own-slot-values-r
    frame-own-slot-value-r
    
    string->type-value
    string->role
    
    mk-cls
    mk-slot
    mk-facet
    mk-simple-instance
    
    #|
    kb
    |#
    frame->symbol
    string->symbol
    with-kb
   ))

(defpackage :cl-kbs)

