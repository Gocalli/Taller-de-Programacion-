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


;Crear un programa que pida al usuario un número y determine si es divisible entre 3 y 5 al mismo tiempo.

(define (DivisorNumero)
    (define n (read))
    (cond
        [(number? n)
            (cond
                [(=(remainder n 15)0)(display "El numero ")(display n)
                (display " es divisible entre 3 y 5")]
                [else (display "El numero ")(display n)(display " No es divisible entre 3 y 5 ")]
            )
        ]
        [else (display "Ingrese un valor numerico ")(DivisorNumero)]
    )
)
(display "Ingrese un valor ")
(DivisorNumero)


#|Crear un programa que solicite al usuario su nombre y su edad.
 Si la edad ingresada es menor a 18 años, mostrar un mensaje de bienvenida
  y mencionar que su contenido es apto solo para mayores de edad. Si la edad es mayor o igual a 18,
 mostrar un mensaje de bienvenida sin restricciones.|#

 (define (Welcome)
    (define name (read))
    (displayln "Ingrese su edad ")
    (define Edad (read))
    (cond
        [(number? Edad)
            (cond
                [(< Edad 18)(display "Hola ")(display name)(display " este sitio es solo para +18 ")]
                [(>= Edad 18)(display "Bienvenido ")(display name)
                (display " , como se encuentra el dia de hoy")]
            )
        ]
        [else (display "Ingrese los valores solicitados por favor ")(Welcome)]
    )
 )
 
 (display "Ingrese su nombre ")
 (Welcome)
 |#


;Crear un programa que pida al usuario dos números y determine si el segundo es múltiplo del primero.
; Si es múltiplo, mostrar el resultado

(define (Multiplo)
    ((displayln "Ingrese el primer valor "))
    (define p2 (read))
    (displayln "Ingrese el valor del segundo termino")
    (define p1 (read))
    (define divisor (/ p2 p1))
    (cond
        [(number? p1)(number? p2)
            (cond
                [(=(remainder p2 p1)0)(display "P2 si es multiplo de p1 " )
                (display "Y el resultado es ")(/ p2 p1)]
                [(display "El valor de ")(display p2)(display " no es multiplo de ")
                (display p1) ]
            )
        ]
        [else (display "Ingrese valores correctos ")(Multiplo)]
    )
)

(Multiplo)