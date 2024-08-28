#!/usr/bin/env gst

Object subclass: Calculator [
     | result |
     
     Calculator class >> new [
       ^ super new initialize
     ]
     
     initialize [
       result := 0.
     ]
     
     add: aNumber [
       result := result + aNumber.
       ^ result
     ]
     
     subtract: aNumber [
       result := result - aNumber.
       ^ result
     ]
     
     multiply: aNumber [
       result := result * aNumber.
       ^ result
     ]
     
     divide: aNumber [
       aNumber = 0 
         ifTrue: [ self error: 'Cannot divide by zero' ]
         ifFalse: [ result := result / aNumber ].
       ^ result
     ]

     squareRoot: aNumber [
      aNumber < 0
        ifTrue: [ self error: 'Square root of negative not possible']
        ifFalse: [ result := aNumber sqrt ].
        ^ result
     ]

     modulo: aNumber [
      result := result \\ aNumber.
      ^ result
     ]
     
     clear [
       result := 0.
     ]
     
     result [
       ^ result
     ]
   ]


calc := Calculator new.
    
calc add: 5 printNl.
"calc multiply: 3 printNl.
calc subtract: 2 printNl.
calc divide: 2 printNl.
calc result printNl.
calc squareRoot: 25 printNl.
calc result printNl.
calc squareRoot: -25 printNl.
calc result printNl.
calc divide "
calc modulo: 3.
calc result printNl.

