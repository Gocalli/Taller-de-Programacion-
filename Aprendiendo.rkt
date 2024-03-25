#lang racket

;Primer punto
(define (mayormenor)
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


 ;Crear un programa que pida un numero y determine si es impar o par

 (define (impar)
    (define dato(read))
    (cond
        [(number? dato)
            (cond
            [(=(remainder dato 2 )0)(display "El numero ")(display dato)(display " es par ")]
            [else (display "El numero ")(display dato)(display " es impar")]
            
            )
        ]
        [else (display "Ingrese un valor numerico ")(impar)]
    )
 )

 (impar)

 ; genero masculino femenino y apto o no apto 

(define (genero) 
    (display "Ingrese su genero ")
    (define gender (read))
    (define convertion (symbol->string gender))
    (define minis (string-downcase convertion))
    minis
)

(define (age)
    (display "Ingrese su edad")
    (define edad(read))
    (cond
        [(number? edad)edad]
        [else (display "Ingrese un valor valido ")(age)]  
    )
        
)

(define (servicio)
    (cond
        [(string=? (genero) "masculino")
            (cond
                [(>= (age) 18)(display "Es apto ")]
                [(<  (age) 18)(display "No es apto")]
            )
        ]
        [(string=? (genero) "femenino")(display "No es obligatorio vaya trabaje ")]
        [else (display "Ingrese entre genero masculino y femenino unicamente ")]
    )
)    

(servicio)


; decir si el salario del tipo es mayor o menor al minimo

(define (sueldo sueldoUsuario)
    (define salarioMinimo 1300000)
    (cond
        [(number? sueldoUsuario)
            (cond
                [(> sueldoUsuario salarioMinimo)(display "Su sueldo es mayor al minimo")]
                [(< sueldoUsuario salarioMinimo)(display "Su sueldo es menor al minimo")]
            )
        ]
        [else (display "Ingrese un valor numerico ")(sueldo (read))]
    )
)
(display "Ingrese su sueldo ")
(sueldo (read))