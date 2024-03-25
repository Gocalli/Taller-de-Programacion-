#lang racket

;Primer punto
#|(define (mayormenor)
    (define edad (read))
    (cond 
        [(number? edad)
            (cond 
                [(>= edad 18)(display "Usted es mayor de edad")]
                [(< edad 18)(display "Usted es menor de edad") ]
            )
        ]
        [else (display "Ingrese un valor numerico ")(mayormenor)]
    )
)

(mayormenor)

Un programa que determine si el numero es postivo, negativo o cero

(define (valor)
    (define numero (read))
    (cond
        [(number? numero)
            (cond
                [(>= numero 0)(display "El valor dado es postivo " )]
                [(< numero 0)(display "El valor dado es negativo ")]
                [(zaero? numero)(display "El valor dado es 0 ")]
            )
        ]
        [else (diplay "Ingrese un valor numerico ")(valor)]
    )
)


;Programa que solicite dos numero y diga cual es mayor 

(define (mayor)
    (define valor1 (read))
    (define valor2 (read))
    (cond
        [(number? valor1)(number? valor2)
            (cond
            [(> valor1 valor2)(display "El valor1 es mayor que el valor2")]
            [(< valor1 valor2)(display "El valor1 es menor que el valor2")]
            [(= valor1 valor2)(display "El valor1 es igual al valor2 ")]
            )
        ]
        [else (display "Ingrese unicamente valores numericos ")(mayor) ]
    )
)

(mayor)
|#

 ;Crear un programa que pida un numero y determine si es impar o par

 (define (impar)
    (define dato(read))
    (cond
        [(number? dato)
            (cond
            [(remainder dato 2 )(display "Es valor ingresado es un numero par ")]
            [(not (remainder dato 2))(display "El valor ingresado es un numero impar")]
            )
        ]
        [else (display "Ingrese un valor numerico ")(impar)]
    )
 )

 (impar)