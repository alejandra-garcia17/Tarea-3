
Funcion ejercicioNum1
	
///	1) Determinar cuánto se debe pagar por cierta cantidad de colas, considerando que si son másde 23 colas, el costo por unidad es de $0,50 caso 
///	contrario el precio será 20% mas. Al costo resultante calcular el 12% del iva. Se pide presentar: cantidad comprada, el costo ´por unidad, el total 
///	sin iva el iva y el total a pagar.
	
	Definir cantidadColas, costoPorUnidad, totalSinIVA, iva, totalPagar  como real
	
	// Entrada de datos
	Escribir "Ingrese la cantidad de colas compradas: "
	Leer cantidadColas
	
	// Verificar el costo por unidad dependiendo de la cantidad de colas
	Si cantidadColas > 23 Entonces
		costoPorUnidad = 0.50 // Costo por unidad si son más de 23 colas
	Sino
		costoPorUnidad = 1.20 * 0.20 + 1.20 // Costo por unidad si son 23 colas o menos (20% más)
	FinSi
	
	// Calcular el total sin IVA
	totalSinIVA = cantidadColas * costoPorUnidad
	
	// Calcular el IVA (12% del total sin IVA)
	iva = 0.12 * totalSinIVA
	
	// Calcular el total a pagar (suma del total sin IVA y el IVA)
	totalPagar = totalSinIVA + iva
	
	// Salida de resultados
	Escribir "Cantidad de colas compradas: ", cantidadColas
	Escribir "Costo por unidad: $", costoPorUnidad
	Escribir "Total sin IVA: $", totalSinIVA
	Escribir "IVA (12%): $", iva
	Escribir "Total a pagar: $", totalPagar

FinFuncion

Funcion ejercicioNum2
	
//// 2) La asociación de vinicultores tiene como política fijar un precio inicial al kilo de uva, la cual se clasifica en tipos A y B, y además en 
//// tamaños 1 y 2. Cuando se realiza la venta del producto, ésta es de un solo tipo y tamaño, se requiere determinar cuánto recibirá un productor por 
//// la uva que entrega en un embarque, considerando lo siguiente:Si es de tipo A, se le cargan 20 al precio inicial cuando es de tamaño 1; y 30 si es 
//// de tamaño 2. Si es de tipo B, se rebajan 30 cuando es de tamaño 1, y 50 cuando es de tamaño 2. Realice un algoritmo para determinar la ganancia 
//// obtenida
	
	// Declaración de variables
	definir  tipoUva, porteUva Como Caracter
	definir precioInicial, ganancia como real
	
    // Entrada de datos
    Escribir "Ingrese el tipo de uva (A o B): "
    Leer tipoUva
    Escribir "Ingrese el tamaño de la uva (1 o 2): "
    Leer porteUva
	
    // Definir el precio inicial según el tipo de uva
    Si tipoUva = "A" Entonces
        precioInicial = 100 // Precio inicial para uva tipo A
        Si porteUva = "1" Entonces
            precioInicial = precioInicial + 20 // Aumento de 20 para tamaño 1
        Sino
            precioInicial = precioInicial + 30 // Aumento de 30 para tamaño 2
        FinSi
    Sino
        precioInicial = 90 // Precio inicial para uva tipo B
        Si porteUva = "1" Entonces
            precioInicial = precioInicial - 30 // Reducción de 30 para tamaño 1
        Sino
            precioInicial = precioInicial - 50 // Reducción de 50 para tamaño 2
        FinSi
    FinSi
	
    // Calcular la ganancia
    ganancia = precioInicial // La ganancia es el precio inicial
	
    // Mostrar la ganancia obtenida
    Escribir "La ganancia obtenida por la uva entregada es: $", ganancia
	
FinFuncion
	
Funcion ejercicioNum3
	
//// 3) Dado dos números obtener el residuo sin el operador mod, %
	
    // Definir variables
    Definir dividendo, divisor, residuo Como Entero
	
    // Entrada de datos
    Escribir "Ingrese el dividendo: "
    Leer dividendo
    Escribir "Ingrese el divisor: "
    Leer divisor
	
    // Cálculo del residuo sin usar el operador mod (%)
    residuo = dividendo
    Mientras residuo >= divisor Hacer
        residuo = residuo - divisor
    FinMientras
	
    // Mostrar el residuo obtenido
    Escribir "El residuo de la división es: ", residuo
	
FinFuncion

Funcion ejercicioNum4
	
//// 4) El consultorio del Dr. Paez tiene como política cobrar la consulta con base en el número de cita, de la siguiente forma:
//// - Las tres primeras citas a $200.00 c/u.
//// - Las siguientes dos citas a $150.00 c/u.
//// - Las tres siguientes citas a $100.00 c/u.
//// - Las restantes a $50.00 c/u, mientras dure el tratamiento.
//// Se requiere un algoritmo para determinar:
//// - Cuánto pagará el paciente por la cita.
//// - El monto de lo que ha pagado el paciente por el tratamiento.
//// - Para la solución de este problema se requiere saber qué número de cita se efectuará, con el cual se podrá determinar el costo que tendrá la 
//// consulta y cuánto se ha gastado en el tratamiento.
	
    // Definir variables
    Definir numeroCita, costoCita, totalPagado, citaActual, costoTotal, As como Entero
	
    // Inicializar variables
    numeroCita = 1
    totalPagado = 0
    costoTotal = 0
	
    // Entrada del número de cita
    Escribir "Ingrese el número de la cita actual: "
    Leer citaActual
	
    // Calcular el costo de la cita actual y el costo total pagado
    Mientras numeroCita <= citaActual Hacer
        Si numeroCita <= 3 Entonces
            costoCita = 200
        Sino
            Si numeroCita <= 5 Entonces
                costoCita = 150
            Sino
                Si numeroCita <= 8 Entonces
                    costoCita = 100
                Sino
                    costoCita = 50
                FinSi
            FinSi
        FinSi
		
        totalPagado = totalPagado + costoCita
        numeroCita = numeroCita + 1
    FinMientras
	
    // Mostrar el costo de la cita actual y el monto total pagado por el tratamiento
    Escribir "El costo de la cita actual es: $", costoCita
    Escribir "El monto total pagado por el tratamiento es: $", totalPagado
	
FinFuncion 

Funcion ejercicioNum5
	
//// 5) Escribir un algoritmo que lea cuatro números y determine si el numero 1 es la mitad del número 2; Y si el numero 3 es divisor del numero4.

    // Definir variables
    Definir num1, num2, num3, num4 Como Real
	
    // Entrada de datos
    Escribir "Ingrese el primer número: "
    Leer num1
    Escribir "Ingrese el segundo número: "
    Leer num2
    Escribir "Ingrese el tercer número: "
    Leer num3
    Escribir "Ingrese el cuarto número: "
    Leer num4
	
    // Verificar si el número 1 es la mitad del número 2
    Si (num1 * 2) = num2 Entonces
        Escribir "El número 1 es la mitad del número 2."
    Sino
        Escribir "El número 1 no es la mitad del número 2."
    FinSi
	
    // Verificar si el número 3 es divisor del número 4
    Si num4 MOD num3 = 0 Entonces
        Escribir "El número 3 es divisor del número 4."
    Sino
        Escribir "El número 3 no es divisor del número 4."
    FinSi
	
FinFuncion

Funcion  ejercicioNum6
	
//// 6) El banco XYZ ha decidido aumentar el límite de crédito de las tarjetas de crédito de sus clientes, para esto considera que:
//// - Si su cliente tiene tarjeta tipo 1, el aumento será del 25%.
//// - Si tiene tipo 2 el aumento será del 35%
//// - Si tiene tipo 3, el aumento será del 40%
//// - Para cualquier otro tipo será del 50%
//// Se pide realizar un algoritmo que ayude al banco a determinar el nuevo límite de crédito que tendrá una persona en su tarjeta considerando que 
//// después del aumento de porcentaje se tendrá que subir $20 adicionales a todas las tarjetas

    // Definir variables
    Definir tipoTarjeta Como Entero
    Definir limiteCredito, aumentoPorcentaje, nuevoLimit Como Real
	
    // Entrada de datos
    Escribir "Ingrese el tipo de tarjeta (1, 2, 3 u otro): "
    Leer tipoTarjeta
    Escribir "Ingrese el límite de crédito actual: $"
    Leer limiteCredito
	
    // Calcular el aumento porcentual según el tipo de tarjeta
    Segun tipoTarjeta Hacer
        1:
            aumentoPorcentaje = 0.25
        2:
            aumentoPorcentaje = 0.35
        3:
            aumentoPorcentaje = 0.40
        De Otro Modo:
            aumentoPorcentaje = 0.50
    FinSegun
	
    // Calcular el nuevo límite de crédito con el aumento y el adicional de $20
    nuevoLimit = limiteCredito * (1 + aumentoPorcentaje) + 20
	
    // Mostrar el nuevo límite de crédito
    Escribir "El nuevo límite de crédito es: $", nuevoLimit
	
FinFuncion

Funcion  ejercicioNum7
	
//// 7) Escribir un algoritmo que lea cuatro números y determine si el numero 1 es divisor del numero3 Y si el numero 2 es el doble del numero4.

    // Definir variables
    Definir num1, num2, num3, num4 Como Real
	
    // Entrada de datos
    Escribir "Ingrese el primer número: "
    Leer num1
    Escribir "Ingrese el segundo número: "
    Leer num2
    Escribir "Ingrese el tercer número: "
    Leer num3
    Escribir "Ingrese el cuarto número: "
    Leer num4
	
    // Verificar si el número 1 es divisor del número 3
    Si num3 MOD num1 = 0 Entonces
        Escribir "El número 1 es divisor del número 3."
    Sino
        Escribir "El número 1 no es divisor del número 3."
    FinSi
	
    // Verificar si el número 2 es el doble del número 4
    Si num2 = num4 * 2 Entonces
        Escribir "El número 2 es el doble del número 4."
    Sino
        Escribir "El número 2 no es el doble del número 4."
    FinSi
	
FinFuncion

Funcion  ejercicioNum8
	
//// 8) El banco POO ha decidido aumentar el límite de crédito de las tarjetas de crédito de sus clientes, para esto considera que:
//// - Si su cliente tiene tarjeta tipo 1, el aumento será del $100 .
//// - Si tiene tipo 2 el aumento será del $200
//// - Si tiene tipo 3, el aumento será del $300
//// - Para cualquier otro tipo será del 500
//// Realizar un algoritmo que ayude al banco a determinar el nuevo límite de crédito que tendrá una persona en su tarjeta considerando que
//// después del aumento se tendrá que subir 10% adicionales a todas las tarjetas

    // Definir variables
    Definir tipoTarjeta Como Entero
    Definir limiteCredito, aumento, nuevoLimit Como Real
	
    // Entrada de datos
    Escribir "Ingrese el tipo de tarjeta (1, 2, 3 u otro): "
    Leer tipoTarjeta
    Escribir "Ingrese el límite de crédito actual: $"
    Leer limiteCredito
	
    // Calcular el aumento según el tipo de tarjeta
    Segun tipoTarjeta Hacer
        1:
            aumento = 100
        2:
            aumento = 200
        3:
            aumento = 300
        De Otro Modo:
            aumento = 500
    FinSegun
	
    // Aplicar el aumento adicional del 10%
    aumento = aumento + (aumento * 0.10)
	
    // Calcular el nuevo límite de crédito
    nuevoLimit = limiteCredito + aumento
	
    // Mostrar el nuevo límite de crédito
    Escribir "El nuevo límite de crédito es: $", nuevoLimit
	
FinFuncion

Funcion ejercicioNum9
	
//// 9) Pedir al usuario un número y mostrar si es negativo menor que -20, sino mostrar si es positivo par o impar múltiplo de 7.
	
    // Definir variable
    Definir num Como Entero
	
    // Entrada de datos
    Escribir "Ingrese un número: "
    Leer num
	
    // Verificar si es negativo menor que -20
    Si num < -20 Entonces
        Escribir "El número es negativo y menor que -20."
    Sino
        // Verificar si es positivo, par o impar, y múltiplo de 7
        Si num > 0 Entonces
            Si num MOD 2 = 0 Entonces
                Escribir "El número es positivo y par."
            Sino
                Si num MOD 7 = 0 Entonces
                    Escribir "El número es positivo, impar y múltiplo de 7."
                Sino
                    Escribir "El número es positivo e impar, pero no es múltiplo de 7."
                FinSi
            FinSi
        Sino
            Escribir "El número es cero."
        FinSi
    FinSi
	
FinFuncion

Funcion ejercicioNum10
	
////	10) La asociación de vinicultores tiene como política fijar un precio inicial al quintal de pitajaya, la cual se clasifica en tipos "Amarilla" y 
////	"Colorada", y además en tamaños 1 y 2. Cuando se realiza la venta del producto, ésta es de un solo tipo y tamaño, se requiere determinar cuánto 
////	recibirá un productor por la pitajaya que entrega en un embarque, considerando lo siguiente:
////	- Si es de tipo Amarilla, se le cargan $10 al precio inicial cuando es de tamaño 1; y 15% mas $5
////	- si es de tamaño 2
////	- Si es de tipo Colorada, se rebajan $20 cuando es de tamaño 1, y 20% cuando es de tamaño
////	2. Sea tipo Amarilla y Colorada se debe se aplicar un descuento del 5% y el 12% del IVA.
////	Realice un algoritmo para determinar el precio de embarque
	
    // Definir variables
    Definir tipoPitahaya, portePitahaya Como Cadena
    Definir precioIni, precioFinal, descuento, iva, precioEmbarque Como Real
	
    // Entrada de datos
    Escribir "Ingrese el tipo de pitahaya (Amarilla o Colorada): "
    Leer tipoPitahaya
    Escribir "Ingrese el tamaño de la pitahaya (1 o 2): "
    Leer portePitahaya
	
    // Calcular el precio inicial según el tipo y tamaño de pitahaya
    Segun tipoPitahaya Hacer
        "Amarilla":
            Si portePitahaya = "1" Entonces
                precioIni = 100  // Precio inicial para pitahaya Amarilla tamaño 1
            Sino
                precioIni = 100 * 1.15 + 5  // Precio inicial para pitahaya Amarilla tamaño 2 con 15% y $5 adicionales
            FinSi
        "Colorada":
            Si portePitahaya = "1" Entonces
                precioIni = 100 - 20  // Precio inicial para pitahaya Colorada tamaño 1 con descuento de $20
            Sino
                precioIni = 100 * 0.80  // Precio inicial para pitahaya Colorada tamaño 2 con descuento del 20%
            FinSi
        De Otro Modo:
            Escribir "Tipo de pitahaya no válido."
            //Detener
    FinSegun
	
    // Aplicar descuento del 5%
    descuento = precioIni * 0.05
    precioFinal = precioIni - descuento
	
    // Calcular el IVA del 12%
    iva = precioFinal * 0.12
	
    // Calcular el precio de embarque
    precioEmbarque = precioFinal + iva
	
    // Mostrar el precio de embarque
    Escribir "El precio de embarque de la pitahaya es: $", precioEmbarque
	
FinFuncion

Funcion  ejercicioNum11
	
////	11) Pedir al usuario un número y mostrar si es par menor que 10, sino mostrar si es negativo e impar o negativo divisible para 5.
	
    // Definir variable
    Definir numero Como Entero
	
    // Entrada de datos
    Escribir "Ingrese un número: "
    Leer numero
	
    // Verificar si es par y menor que 10
    Si numero MOD 2 = 0 Y numero < 10 Entonces
        Escribir "El número es par y menor que 10."
    Sino
        // Verificar si es negativo e impar o negativo divisible por 5
        Si numero < 0 Entonces
            Si numero MOD 2 <> 0 Entonces
                Escribir "El número es negativo e impar."
            Sino
                Si numero MOD 5 = 0 Entonces
                    Escribir "El número es negativo y divisible por 5."
                Sino
                    Escribir "El número es negativo, pero no es impar ni divisible por 5."
                FinSi
            FinSi
        Sino
            Escribir "El número no cumple ninguna de las condiciones mencionadas."
        FinSi
    FinSi
	
FinFuncion

Funcion  ejercicioNum12
	
//// 12) Fábricas "El cometa" produce artículos con claves (1, 2, 3, 4, 5 y 6). Se requiere un algoritmo para calcular los precios de venta, para esto 
//// hay que considerar lo siguiente:
//// - Costo de producción = materia prima + mano de obra + gastos de fabricación.
//// - Precio de venta = costo de producción + 45 % de costo de producción.
//// - El costo de la mano de obra se obtiene de la siguiente forma: para los productos con clave 3 o 4 se carga 75 % del costo de la materia prima; 
//// para los que tienen clave 1 o 5 se carga 80 %, y para los que tienen clave 2 o 6, 85 %.
//// - Para calcular el gasto de fabricación se considera que, si el artículo que se va a producir tiene claves 2 o 5, este gasto representa 30 % sobre 
//// el costo de la materia prima; si las claves son 3 o 6, representa 35 %; si las claves son 1 o 4, representa 28 %. La materia prima tiene el mismo
//// costo para cualquier clave
	
	// Definir variables
	Definir claveProducto Como Entero
	Definir costoProduccion, precioVenta, materiaPrima, manoDeObra, gastosFabricacion Como Real
	
	// Entrada de datos
	Escribir "Ingrese la clave del producto (1, 2, 3, 4, 5 o 6): "
	Leer claveProducto
	
	Escribir "Ingrese el costo de materia prima: "
	Leer materiaPrima
	
	// Calcular costo de la mano de obra
	Segun claveProducto Hacer
		1, 5:
			manoDeObra = materiaPrima * 0.8
		2, 6:
			manoDeObra = materiaPrima * 0.85
		3, 4:
			manoDeObra = materiaPrima * 0.75
		De Otro Modo:
			Escribir "Clave de producto no válida."
			//Detener
	FinSegun
	
	// Calcular gastos de fabricación
	Segun claveProducto Hacer
		1, 4:
			gastosFabricacion = materiaPrima * 0.28
		2, 5:
			gastosFabricacion = materiaPrima * 0.3
		3, 6:
			gastosFabricacion = materiaPrima * 0.35
	FinSegun
	
	// Calcular costo de producción y precio de venta
	costoProduccion = materiaPrima + manoDeObra + gastosFabricacion
	precioVenta = costoProduccion + (0.45 * costoProduccion)
	
	// Mostrar el precio de venta
	Escribir "El precio de venta del producto es: $", precioVenta
	
FinFuncion 

Funcion  ejercicioNum13
	
////	13) Dado un número entero N, calcular e informar al usuario cuántos dígitos tiene dicho número.
	
    // Definir variables
    Definir numero, contador Como Entero
	
    // Entrada de datos
    Escribir "Ingrese un número entero: "
    Leer numero
	
    // Inicializar el contador de dígitos a cero
    contador = 0
	
    // Calcular la cantidad de dígitos del número
    Si numero = 0 Entonces
        contador = 1
    Sino
        Mientras numero <> 0 Hacer
            numero = numero / 10
            contador = contador + 1
        FinMientras
    FinSi
	
    // Mostrar la cantidad de dígitos al usuario
    Escribir "El número tiene ", contador, " dígitos."
	
FinFuncion

Funcion  ejercicioNum14
	
////	14) Dado un número, determine si es capicúa.
////    Nota: un número capicúa es aquel que se lee igual hacia adelante que hacia atrás
	
	// Definir variables
	Definir numero, numeroReverso, digito, copiaNumero Como Entero
	
	// Entrada de datos
	Escribir "Ingrese un número: "
	Leer numero
	
	// Asignar el valor absoluto del número a la copia del número
	copiaNumero = Abs(numero)
	numeroReverso = 0
	
	// Obtener el reverso del número
	Mientras copiaNumero > 0 Hacer
		digito = copiaNumero MOD 10
		numeroReverso = numeroReverso * 10 + digito
		copiaNumero = copiaNumero / 10
	FinMientras
	
	// Verificar si el número es capicúa
	Si Abs(numero) = numeroReverso Entonces
		Escribir "El número es capicúa."
	Sino
		Escribir "El número NO es capicúa."
	FinSi
	
FinFuncion 

Funcion  ejercicioNum15
	
	/// 15) Escribir un algoritmo que presente los divisores de un numero
	
    // Definir variables
    Definir numero, divisor Como Entero
	
    // Entrada de datos
    Escribir "Ingrese un número: "
    Leer numero
	
    Escribir "Los divisores de ", numero, " son:"
	
    // Calcular y mostrar los divisores del número
    Para divisor = 1 Hasta numero Hacer
        Si numero MOD divisor = 0 Entonces
            Escribir divisor
        FinSi
    FinPara
	
FinFuncion 

Funcion  ejercicioNum16
	
	/// 16) Escribir un algoritmo que presente la suma de los divisores de un numero
	
    // Definir variables
    Definir numero, divisor, sumaDivisores Como Entero
	
    // Inicializar la suma de divisores en cero
    sumaDivisores = 0
	
    // Entrada de datos
    Escribir "Ingrese un número: "
    Leer numero
	
    // Calcular y mostrar la suma de los divisores del número
    Para divisor = 1 Hasta numero Hacer
        Si numero MOD divisor = 0 Entonces
            sumaDivisores = sumaDivisores + divisor
        FinSi
    FinPara
	
    Escribir "La suma de los divisores de ", numero, " es: ", sumaDivisores
	
FinFuncion

Funcion  ejercicioNum17
	
	/// 17) Escribir un algoritmo que presente la cantidad de los divisores de un numero
	
    // Definir variables
    Definir numero, divisor, cantidadDivisores Como Entero
	
    // Inicializar la cantidad de divisores en cero
    cantidadDivisores = 0
	
    // Entrada de datos
    Escribir "Ingrese un número: "
    Leer numero
	
    // Calcular la cantidad de divisores del número
    Para divisor = 1 Hasta numero Hacer
        Si numero MOD divisor = 0 Entonces
            cantidadDivisores = cantidadDivisores + 1
        FinSi
    FinPara
	
    Escribir "El número ", numero, " tiene ", cantidadDivisores, " divisores."
	
FinFuncion 

Funcion ejercicioNum18
	
////	18) Escribir un algoritmo que indique si un número es perfecto
////	Nota: un número es perfecto cuando la suma de los divisores del número incluido el 1 y excluido el propio número es igual al numero
////	Ejemplo: numero=6: los divisores del 6 son: 1+2+3=6
	
    // Definir variables
    Definir numero, divisor, sumaDivisores Como Entero
	
    // Inicializar la suma de divisores en cero
    sumaDivisores = 0
	
    // Entrada de datos
    Escribir "Ingrese un número: "
    Leer numero
	
    // Calcular la suma de los divisores del número
    Para divisor = 1 Hasta numero / 2 Hacer
        Si numero MOD divisor = 0 Entonces
            sumaDivisores = sumaDivisores + divisor
        FinSi
    FinPara
	
    // Verificar si el número es perfecto
    Si sumaDivisores = numero Entonces
        Escribir "El número ", numero, " es perfecto."
    Sino
        Escribir "El número ", numero, " NO es perfecto."
    FinSi
	
FinFuncion

Funcion ejercicioNum19
	
////	19) Dado un número N determinar si es un número primo.
////    Nota: Un número primo es aquel que solo es divisible por 1(uno) y por el mismo.
	
    // Definir variables
    Definir numero, divisor, contadorDivisores Como Entero
    contadorDivisores = 0
	
    // Entrada de datos
    Escribir "Ingrese un número: "
    Leer numero
	
    // Verificar si el número es primo
    Si numero > 1 Entonces
        Para divisor = 1 Hasta numero Hacer
            Si numero MOD divisor = 0 Entonces
                contadorDivisores = contadorDivisores + 1
            FinSi
        FinPara
		
        // Determinar si el número es primo
        Si contadorDivisores = 2 Entonces
            Escribir "El número ", numero, " es primo."
        Sino
            Escribir "El número ", numero, " NO es primo."
        FinSi
    Sino
        Escribir "El número ", numero, " NO es primo."
    FinSi
	
FinFuncion 

Funcion  ejercicioNum20
	
////	20) Dado dos números determinar si son primos gemelos.
////	Nota: Dos números son primos gemelos si los dos son primos y su resta en valor absoluto es igual a 2. 
////	Ejemplo: 7 y 5
	
    // Definir variables
    Definir numero1, numero2, esPrimo1, esPrimo2 , divisor Como Entero
	
    // Entrada de datos
    Escribir "Ingrese el primer número: "
    Leer numero1
	
    Escribir "Ingrese el segundo número: "
    Leer numero2
	
    // Verificar si los números son primos
    esPrimo1 = 1
    esPrimo2 = 1
    Para divisor = 2 Hasta numero1 / 2 Hacer
        Si numero1 MOD divisor = 0 Entonces
            esPrimo1 = 0
        FinSi
    FinPara
	
    Para divisor = 2 Hasta numero2 / 2 Hacer
        Si numero2 MOD divisor = 0 Entonces
            esPrimo2 = 0
        FinSi
    FinPara
	
    // Verificar si los números son primos gemelos
    Si esPrimo1 = 1 Y esPrimo2 = 1 Y Abs(numero1 - numero2) = 2 Entonces
        Escribir "Los números ", numero1, " y ", numero2, " son primos gemelos."
    Sino
        Escribir "Los números no son primos gemelos."
    FinSi
	
FinFuncion 

Funcion ejercicioNum21
	
////	21) Dado dos números determinar si son primos amigos.
////	Nota: Dos números son primos amigos si las sumas de los divisores del numero1 es igual a la suma de los divisores del numero2. 
////	Ejemplo: 6(1+2+3=6) y 25(1+5=6)
	
    // Definir variables
    Definir numero1, numero2, sumaDivisores1, sumaDivisores2, divisor Como Entero
    sumaDivisores1 = 0
    sumaDivisores2 = 0
	
    // Entrada de datos
    Escribir "Ingrese el primer número: "
    Leer numero1
	
    Escribir "Ingrese el segundo número: "
    Leer numero2
	
    // Calcular la suma de los divisores de los números
    Para divisor = 1 Hasta numero1 / 2 Hacer
        Si numero1 MOD divisor = 0 Entonces
            sumaDivisores1 = sumaDivisores1 + divisor
        FinSi
    FinPara
	
    Para divisor = 1 Hasta numero2 / 2 Hacer
        Si numero2 MOD divisor = 0 Entonces
            sumaDivisores2 = sumaDivisores2 + divisor
        FinSi
    FinPara
	
    // Verificar si los números son primos amigos
    Si sumaDivisores1 = numero2 Y sumaDivisores2 = numero1 Entonces
        Escribir "Los números ", numero1, " y ", numero2, " son primos amigos."
    Sino
        Escribir "Los números no son primos amigos."
    FinSi
	
FinFuncion 

Funcion  ejercicioCad1
	
////	1) Dada n realizar un algoritmo que presente la siguiente secuencia
////	n=6
////	respuesta= 2 2 4 8 32 256
	
    // Definir variables
    Definir n, i, valor Como Entero
	
    // Entrada de datos
    Escribir "Ingrese el valor de n: "
    Leer n
	
    // Inicialización de la secuencia con el primer elemento
    valor = 2
	
    // Generar la secuencia
    Escribir "La secuencia es:"
    Para i = 1 Hasta n Hacer
        Escribir valor
        valor = valor * 2
    FinPara
	
FinFuncion

Funcion ejercicioCad2
	
////	2) Implementa un programa que calcule el promedio de los elementos pares e impares en un arreglo de números enteros y los copie en otro arreglo.
////    Ejemplo:
////	arreglo[2,3,4,7] areglo2[3,5]
	
	Definir n, i, sumaPares, sumaImpares Como Real
	Escribir "Ingrese la cantidad de elementos del arreglo:"
	Leer n
	
	Definir arreglo Como Entero
	Definir arregloPares Como Entero
	Definir arregloImpares Como Entero
	
	sumaPares <- 0
	sumaImpares <- 0
	
	Para i <- 1 Hasta n Hacer
		Escribir "Ingrese el elemento ", i, ":"
		Leer arreglo
		
		Si arreglo % 2 = 0 Entonces
			arregloPares <- arreglo
			sumaPares <- sumaPares + arreglo
		Sino
			arregloImpares <- arreglo
			sumaImpares <- sumaImpares + arreglo
		FinSi
	FinPara
	
	Escribir "Elementos pares:"
	Para i <- 1 Hasta n Hacer
		Si arregloPares<> 0 Entonces
			Escribir arregloPares
		FinSi
	FinPara
	
	Escribir "Elementos impares:"
	Para i <- 1 Hasta n Hacer
		Si arregloImpares<> 0 Entonces
			Escribir arregloImpares
		FinSi
	FinPara
	
	Si sumaPares <> 0 Entonces
		PromedioPares <- sumaPares / n
		Escribir "Promedio de los elementos pares:", PromedioPares
	Sino
		Escribir "No se ingresaron elementos pares."
	FinSi
	
	Si sumaImpares <> 0 Entonces
		PromedioImpares <- sumaImpares / n
		Escribir "Promedio de los elementos impares:", PromedioImpares
	Sino
		Escribir "No se ingresaron elementos impares."
	FinSi
	
FinFuncion

Funcion ejercicioCad3
	
////	3) Dada n realizar un algoritmo que presente la siguiente secuencia
////	n=6
////	respuesta= 20 5 15 10 5 -5 0
	
    Definir n, i, num, contador Como Entero
	
    Escribir "Ingrese un número n:"
    Leer n
	
    contador = n * 2
    num = 20
	
    Para i = 1 Hasta contador Con Paso 1 Hacer
        Escribir num
		
        Si i MOD 2 = 0 Entonces
            num = num - 5
        Sino
            num = num - 10
        FinSi
    FinPara
	
FinFuncion 

Funcion  ejercicioCad4
	
////	4) Implementa un programa que copie los números de un arreglo a 2 arreglos en uno los números positivos y en el otro los negativos 
////    Ejemplo: arreglo=[2,-6,4,-9, 12] arregloPositivo=[2,4,12] arregloNegativo[-6,-9]
	
    Definir n, i, numero Como Entero
    Definir positivos, negativos Como Entero
	
    positivos = 0
    negativos = 0
	
    Escribir "Ingrese la cantidad de números enteros:"
    Leer n
	
    Para i = 1 Hasta n Hacer
        Escribir "Ingrese el número ", i, ":"
        Leer numero
		
        Si numero >= 0 Entonces
            Escribir numero, " es un número positivo."
            positivos = positivos + 1
        Sino
            Escribir numero, " es un número negativo."
            negativos = negativos + 1
        FinSi
    FinPara
	
    Escribir "Cantidad de números positivos:", positivos
    Escribir "Cantidad de números negativos:", negativos
FinFuncion 

Funcion ejercicioCad5
	
////	5) Leer una secuencia de números hasta que se ingrese un numero negativo.
////	Mostrar la suma de los pares y la cantidad de los números que son múltiplo de 3
////    Ejemplo: secuencia: 4,14,3,0,21,2,-4
////	Respuesta:
////	paresSuma=20
////	contMuliplos3=2
	
    Definir secuencia Como Entero
    Definir paresSuma, contMultiplos3, i, j, numero Como Entero
	Dimension secuencia[100]
    paresSuma = 0
    contMultiplos3 = 0
    j = 0
	
    Escribir "Ingrese una secuencia de números. Ingrese un número negativo para finalizar."
    Leer numero
	
    Mientras numero >= 0 Hacer
        secuencia[j] = numero
        j = j + 1
        Leer numero
    FinMientras
	
    Para j = 0 Hasta i - 1 Con Paso 1 Hacer
        Si secuencia[i] MOD 2 = 0 Entonces
            paresSuma = paresSuma + secuencia[j]
        FinSi
		
        Si secuencia[j] MOD 3 = 0 Entonces
            contMultiplos3 = contMultiplos3 + 1
        FinSi
    FinPara
	
    Escribir "La suma de los números pares es: ", paresSuma
    Escribir "La cantidad de números que son múltiplos de 3 es: ", contMultiplos3
FinFuncion 

Funcion  ejercicioCad6
	
////	6) Leer una secuencia de números hasta que se ingrese un 0 y almacenarlos en un arreglo Se pide recorrer el arreglo y mostrar la suma del 
////	cuadrado de cada numero.
////	Ejemplo: secuencia: 4,3,2,5,0
////	arreglo=[4,3,2,5]
////	exponentes= 16 9 4 25
////	respuestaSuma=54

    Definir numer Como Entero
    Definir exponentes Como Entero
    Definir numero, i, sumaExponentes Como Entero
	Dimension numer[100]
	Dimension exponentes[100]
    i = 0
    sumaExponentes = 0
	
    Escribir "Ingrese una secuencia de números. Ingrese 0 para finalizar."
    Leer numero
	
    Mientras numero <> 0 Hacer
        numer[i] = numero
        exponentes[i] = numero * numero
        sumaExponentes = sumaExponentes + exponentes[i]
        i = i + 1
        Leer numero
    FinMientras
	
    Escribir "Secuencia almacenada en el arreglo:"
    Para i = 0 Hasta i - 1 Con Paso 1 Hacer
        Escribir numer[i]
    FinPara
	
    Escribir "Exponentes correspondientes en el arreglo de exponentes:"
    Para i = 0 Hasta i - 1 Con Paso 1 Hacer
        Escribir exponentes[i]
    FinPara
	
    Escribir "La suma de los exponentes es: ", sumaExponentes
	
FinFuncion 

Funcion ejercicioCad7
	
////	7) Leer una secuencia de números hasta que se ingrese un numero par. Mostrar la cantidad de los números mayores a 5 y la suma de los múltiplos 
////	de 5
////    Ejemplo: secuencia: 3,5,15,7,9, 4
////	Respuesta
////	contMay5=3
////	sumaMultiplos5=20
	
    Definir secuencia Como Entero
    Definir numero, i, contMay5, sumaMultiplos5 Como Entero
	Dimension secuencia[100]
    i = 0
    contMay5 = 0
    sumaMultiplos5 = 0
	
    Escribir "Ingrese una secuencia de números. Ingrese un número par para finalizar."
    Leer numero
	
    Mientras numero MOD 2 <> 0 Hacer
        secuencia[i] = numero
        i = i + 1
		
        Si numero > 5 Entonces
            contMay5 = contMay5 + 1
        FinSi
		
        Si numero MOD 5 = 0 Entonces
            sumaMultiplos5 = sumaMultiplos5 + numero
        FinSi
		
        Leer numero
    FinMientras
	
    Escribir "La cantidad de números mayores a 5 es: ", contMay5
    Escribir "La suma de los múltiplos de 5 es: ", sumaMultiplos5
	
FinFuncion 

Funcion ejercicioCad8
	
////	8) Leer una secuencia de números hasta que se ingrese un numero negativo y almacenarlos en un arreglo. Se pide recorrer el arreglo y mostrar 
////	la suma de cada número elevado al cubo.
////	Ejemplo: secuencia: 4,3,2,5,-1
////	arreglo=[4,3,2,5]
////	exponentes= 64 27 8 125
////	respuestaSuma=224 
	
    Definir secuencia Como Entero
    Definir numero, i, sumaExponentes Como Entero
	Dimension secuencia[100]
    i = 0
    sumaExponentes = 0
	
    Escribir "Ingrese una secuencia de números. Ingrese un número negativo para finalizar."
    Leer numero
	
    Mientras numero >= 0 Hacer
        secuencia[i] = numero
        i = i + 1
        Leer numero
    FinMientras
	
    Escribir "Exponentes al cubo:"
	
    Para i = 0 Hasta i-1 Con Paso 1 Hacer
        secuencia[i] = secuencia[i] * secuencia[i] * secuencia[i]
        Escribir secuencia[i]
        sumaExponentes = sumaExponentes + secuencia[i]
    FinPara
	
    Escribir "La suma de los exponentes al cubo es: ", sumaExponentes
	
FinFuncion

Funcion ejercicioCad9
	
////	9) Dado una frase indicar cuantas palabras tiene
////    Ejemplo:
////	frase="hola que tal".
////	contPalabras=3
	
	Definir frase Como Caracteres
	Definir palabras como Caracteres
	Definir i, j, contPalabras Como Entero
	
	Escribir "Ingrese una frase:"
	Leer frase
	Dimension palabras[50]
	i = 1
	j = 1
	contPalabras = 0
	
	Mientras i <= Longitud(frase) Hacer
		Si SubCadena(frase, i, i) <> " " Entonces
			palabras[j] = palabras[j] + SubCadena(frase, i, i)
		Sino
			j = j + 1
			contPalabras = contPalabras + 1
		FinSi
		i = i + 1
	FinMientras
	
	Si Longitud(palabras[j]) > 0 Entonces
		contPalabras = contPalabras + 1
	FinSi
	
	Escribir "La frase tiene ", contPalabras, " palabras."
	
FinFuncion 

Funcion ejercicioCad10
	
////	10) Leer una secuencia de números hasta que se ingrese un numero negativo y almacenarlos en arreglo. Se pide recorrer el arreglo y cambiar cada
////	elemento del arreglo por su doble.
////    Ejemplo: secuencia: 4,3,6,9,0
////	arreglo=[4,3,6,9] = [8,6,12,18]
	
    Definir nums Como Entero
    Definir num, i, j Como Entero
	
    Escribir "Ingrese una secuencia de números. Ingrese un número negativo para finalizar."
    Dimension nums[100]
    j = 1
    Leer num
	
    Mientras num >= 0 Hacer
        nums[j] = num
        j = j + 1
        Leer num
    FinMientras
	
    i = 1
    Mientras i < j Hacer
        nums[i] = nums[i] * 2
        Escribir nums[i]
        i = i + 1
    FinMientras
	
FinFuncion

Funcion  ejercicioCad11
	
////	11) Leer una secuencia de caracteres hasta que se ingrese un punto. Deberá mostrar cuantos "x" se ingresaron
////    Ejemplo:
////	secuencia="axyrx".
////	contX= 2
	
    Definir secuencia Como Caracter
    Definir i, contX,x Como Entero
    Dimension secuencia[100]
    
    Escribir "Ingrese una secuencia de caracteres. Ingrese un punto para finalizar."
    i = 1
    Leer secuencia[i]
    
    contX = 0
	
    Mientras secuencia[i] <> "." Hacer
        Si secuencia[i] = "x" Entonces
            contX = contX + 1
        FinSi
        i = i + 1
        Leer secuencia[i]
    FinMientras
    
    Escribir "La cantidad de ',i ' ingresadas es: ",contX
FinFuncion 

Funcion  ejercicioCad12
	
////	12) Leer una secuencia de números hasta que se ingrese un 0 y almacenarlos en arreglo. Se pide recorrer el arreglo y pasar a otro arreglo solo 
////	los números pares de cada elemento del arreglo1
////    Ejemplo: secuencia: 4,3,6,9,0
////	arreglo1=[4,3,6,9] arreglo2= [4,6] 
	
    Definir arreglo1, arreglo2 Como Entero
    Definir num, i, j Como Entero
    Dimension arreglo1[100]
    Dimension arreglo2[100]
    
    Escribir "Ingrese una secuencia de números. Ingrese 0 para finalizar."
    
    i = 1
    Leer num
    
    Mientras num <> 0 Hacer
        arreglo1[i] = num
        i = i + 1
        Leer num
    FinMientras
    
    j = 1
    i = 1
    Mientras i < i Hacer  // Corrección de "Longitud(arreglo1)" a la variable de control "i"
        Si arreglo1[i] MOD 2 = 0 Entonces
            arreglo2[j] = arreglo1[i]
            j = j + 1
        FinSi
        i = i + 1
    FinMientras
    
    Escribir "Arreglo 1: "
    i = 1
    Mientras i < i Hacer  // Corrección de "j" a la variable de control "i"
        Escribir arreglo1[i]
        i = i + 1
    FinMientras
    
    Escribir "Arreglo 2 con pares de Arreglo 1: "
    i = 1
    Mientras i < j Hacer
        Escribir arreglo2[i]
        i = i + 1
    FinMientras
    
FinFuncion 

Funcion ejercicioCad13
	
////	13) Dado dos números presentar los valores mayores a 5 entre ellos incluidos el numero inicial y final
////    Ejemplo: numero1=2 numero2=10
////	salida= 6 7 8 9 10
	
    Definir numero1, numero2, i, longitu, contador Como Entero
    Dimension numerosMayores[100]
    
    Escribir "Ingrese el primer número:"
    Leer numero1
    
    Escribir "Ingrese el segundo número:"
    Leer numero2
    
    Si numero1 <= 5 Entonces
        numero1 = 6  // Si el número inicial es menor o igual a 5, se inicia en 6
    FinSi
    
    longitu = numero2 - numero1 + 1
    contador = 1
    
    Para i = numero1 Hasta numero2 Hacer
        Si i > 5 Entonces
            numerosMayores[contador] = i
            contador = contador + 1
        FinSi
    FinPara
    
    Escribir "Los números mayores a 5 son:"
    
    Para i = 1 Hasta contador - 1 Hacer
        Escribir numerosMayores[i]
    FinPara
	
FinFuncion 

Funcion ejercicioCad14
	
////	14) Elaborar un algoritmo que lea una serie de edades de los alumnos de la facultad FACI y los guarde en un arreglo. Se pide:
////	· calcular el promedio general de las edades de los alumnos
////	· La cantidad y el promedio de las edades mayores o iguales a 18
////	· La cantidad y el promedio de las edades menores a 18
////    Ejemplo:
////	Edades=[20,17,20,23]
////	promedioGeneral=20
////	cantMayorIgual18= 3, promedioMayorIgual18=21
////	cantMenor18= 1, promedioMenor18=17

    Definir Edades Como Entero
    Definir i, sumaEdades, cantMayorIgual18, sumaMayorIgual18, cantMenor18, sumaMenor18 Como Entero
    
    Dimension Edades[100]
    
    i = 1
    sumaEdades = 0
    cantMayorIgual18 = 0
    sumaMayorIgual18 = 0
    cantMenor18 = 0
    sumaMenor18 = 0
    
    Escribir "Ingrese las edades de los alumnos de la facultad FACI. Ingrese 0 para finalizar."
    Leer Edades[i]
    
    Mientras Edades[i] <> 0 Hacer
        sumaEdades = sumaEdades + Edades[i]
        
        Si Edades[i] >= 18 Entonces
            cantMayorIgual18 = cantMayorIgual18 + 1
            sumaMayorIgual18 = sumaMayorIgual18 + Edades[i]
        Sino
            cantMenor18 = cantMenor18 + 1
            sumaMenor18 = sumaMenor18 + Edades[i]
        FinSi
        
        i = i + 1
        Leer Edades[i]
    FinMientras
    
    Escribir "El promedio general de las edades es: ", sumaEdades / (i - 1)
    
    Si cantMayorIgual18 > 0 Entonces
        Escribir "La cantidad de edades mayores o iguales a 18 es: ", cantMayorIgual18
        Escribir "El promedio de las edades mayores o iguales a 18 es: ", sumaMayorIgual18 / cantMayorIgual18
    Sino
        Escribir "No hay edades mayores o iguales a 18."
    FinSi
    
    Si cantMenor18 > 0 Entonces
        Escribir "La cantidad de edades menores a 18 es: ", cantMenor18
        Escribir "El promedio de las edades menores a 18 es: ", sumaMenor18 / cantMenor18
    Sino
        Escribir "No hay edades menores a 18."
    FinSi
    
FinFuncion 

Funcion ejercicioCad15
	
////	15) Dado dos números presentar los valores Impares comprendidos entre ellos(excluidos el valor inicial y final)
////    Ejemplo: numero1=2 numero2=11
////    salida: 3 5 7 9
	
    Definir numero1, numero2, i, longitud1, contador,numerosImpares  Como Entero
    Dimension numerosImpares[100]
    
    Escribir "Ingrese el primer número:"
    Leer numero1
    
    Escribir "Ingrese el segundo número:"
    Leer numero2
    
    longitud1 = Abs(numero2 - numero1) - 1  // Longitud del rango entre los dos números
    
    contador = 1
    Dimension numeros[100]
    
    Si numero1 < numero2 Entonces
        Para i = numero1 + 1 Hasta numero2 - 1 Hacer
            Si i MOD 2 <> 0 Entonces  // Comprobación de número impar
                numerosImpares[contador] = i
                contador = contador + 1
            FinSi
        FinPara
    Sino
        Para i = numero2 + 1 Hasta numero1 - 1 Hacer
            Si i MOD 2 <> 0 Entonces  // Comprobación de número impar
                numerosImpares[contador] = i
                contador = contador + 1
            FinSi
        FinPara
    FinSi
    
    Escribir "Los números impares son:"
    
    Para i = 1 Hasta contador - 1 Hacer
        Escribir numerosImpares[i]
    FinPara
	
FinFuncion 

Funcion ejercicioCad16
	
////	16) Elaborar un algoritmo que lea una serie de sueldos de los empleados de la unemi y los guarde en un arreglo. Se pide:
////		· Presentar el sueldo más alto de los empleados
////		· La cantidad y el promedio de os sueldos de los empleados
////	Ejemplo:
////		sueldos=[500,700,800,600]
////		SueldoMasAlto= 800
////		cantidadSueldos=4 promedioGeneral=650
	
    Definir sueldos Como Real
    Definir i, cantidadSueldos Como Entero
    Definir sueldoMasAlto, sumaSueldos, promedioGeneral Como Real
	Dimension sueldos[100]
    i = 1
    sueldoMasAlto = 0
    sumaSueldos = 0
	
    Escribir "Ingrese los sueldos de los empleados. Ingrese un valor negativo para terminar."
	
    Leer sueldos[i]
	
    Mientras sueldos[i] >= 0 Hacer
        sumaSueldos = sumaSueldos + sueldos[i]
		
        Si sueldos[i] > sueldoMasAlto Entonces
            sueldoMasAlto = sueldos[i]
        FinSi
		
        i = i + 1
        Leer sueldos[i]
    FinMientras
	
    cantidadSueldos = i - 1  // Determina la cantidad de sueldos ingresados
	
    Si cantidadSueldos > 0 Entonces
        promedioGeneral = sumaSueldos / cantidadSueldos
    Sino
        promedioGeneral = 0
    FinSi
	
    Escribir "El sueldo más alto de los empleados es: ", sueldoMasAlto
    Escribir "Cantidad de sueldos: ", cantidadSueldos
    Escribir "Promedio de sueldos: ", promedioGeneral
	
FinFuncion 

Funcion ejercicioCad17
	
	/// 17) Dadas dos frase indicar la de mayor longitud"
	
	Definir frase1, frase2 Como Cadena
	Definir longitud1, longitud2 Como Entero
	
	Escribir "Ingrese la primera frase:"
	Leer frase1
	
	Escribir "Ingrese la segunda frase:"
	Leer frase2
	
	longitud1 = Longitud(frase1)
	longitud2 = Longitud(frase2)
	
	Si longitud1 > longitud2 Entonces
		Escribir "La primera frase es más larga."
	Sino 
		Si longitud2 > longitud1 Entonces
			Escribir "La segunda frase es más larga."
		Sino
			Escribir "Las dos frases tienen la misma longitud."
		FinSi
	FinSi
	
FinFuncion 

Funcion ejercicioCad18
	
	/// 18) Indicar cuantas ,.;: hay en una cadena"
	
    Definir texto, caracter Como Caracter
    Definir contador_comas, contador_puntos, contador_punto_coma, contador_dos_puntos,i Como Entero
    
    Escribir "Ingrese una cadena de texto:"
    Leer texto
    
    contador_comas = 0
    contador_puntos = 0
    contador_punto_coma = 0
    contador_dos_puntos = 0
    
    Para i = 1 Hasta Longitud(texto) Hacer
        caracter = Subcadena(texto, i, 1)
        
        Si caracter = "," Entonces
            contador_comas = contador_comas + 1
        FinSi
        
        Si caracter = "." Entonces
            contador_puntos = contador_puntos + 1
        FinSi
        
        Si caracter = ";" Entonces
            contador_punto_coma = contador_punto_coma + 1
        FinSi
        
        Si caracter = ":" Entonces
            contador_dos_puntos = contador_dos_puntos + 1
        FinSi
        
    FinPara
    
    Escribir "Cantidad de comas:", contador_comas
    Escribir "Cantidad de puntos:", contador_puntos
    Escribir "Cantidad de punto y comas:", contador_punto_coma
    Escribir "Cantidad de dos puntos:", contador_dos_puntos
	
FinFuncion  

Funcion ejercicioCad19
	
	/// 19) Dado una cadena indicar cuantas vocales, consonantes y dígitos hay"
    
    Definir cadena Como Caracteres
    Definir i, numVocales, numConsonantes, numDigitos Como Entero
    Definir CaracterActual Como Caracter
	
    Escribir "Ingrese una cadena de texto:"
    Leer cadena
    
    numVocales = 0
    numConsonantes = 0
    numDigitos = 0
	
    Para i = 0 Hasta Longitud(cadena)-1 Hacer
        CaracterActual = Subcadena(cadena, i, 1)
		
        Si (CaracterActual >= 'a' Y CaracterActual <= 'z') Entonces
            Si CaracterActual = 'a' O CaracterActual = 'e' O CaracterActual = 'i' O CaracterActual = 'o' O CaracterActual = 'u' Entonces
                numVocales = numVocales + 1
            Sino
                numConsonantes = numConsonantes + 1
            FinSi
        Sino
            Si (CaracterActual >= '0' Y CaracterActual <= '9') Entonces
                numDigitos = numDigitos + 1
            FinSi
        FinSi
    FinPara
    
    Escribir "Cantidad de Vocales:", numVocales
    Escribir "Cantidad de Consonantes:", numConsonantes
    Escribir "Cantidad de Dígitos:", numDigitos
	
FinFuncion 

Funcion ejercicioCad20
	
	/// 20)Indicar cuantas palabras hay en una frase asumiendo 1 o varios espacios entre palabras"
	
    Definir frase Como Caracteres
    Definir i, contador_palabras Como Entero
    Definir palabra_antes, palabra_ahora Como Logico
	
    Escribir "Ingrese una frase:"
    Leer frase
	
    frase = frase + " "  // Agregar un espacio al final para procesar la última palabra
    contador_palabras = 0
    palabra_antes = Falso
	
    Para i = 1 Hasta Longitud(frase) Con Paso 1 Hacer
        Si Subcadena(frase, i, 1) = " " Entonces
            palabra_ahora = Verdadero
        Sino
            palabra_ahora = Falso
        FinSi
		
        Si palabra_antes = Falso Y palabra_ahora = Verdadero Entonces
            contador_palabras = contador_palabras + 1
        FinSi
		
        palabra_antes = palabra_ahora
    FinPara
	
    Escribir "Cantidad de palabras:", contador_palabras
FinFuncion 

Funcion  ejercicioCad21
	
	/// 21) Presentar la suma de los dígitos de una cedula"

    Definir cedula, suma, digito Como Entero
	
    Escribir "Ingrese el número de cédula:"
    Leer cedula
	
    suma = 0
    Mientras cedula > 0 Hacer
        digito = cedula MOD 10  // Obtiene el último dígito
        suma = suma + digito  // Suma el dígito al total
        cedula = cedula % 10  // Elimina el último dígito
    FinMientras
	
    Escribir "La suma de los dígitos de la cédula es:", suma
FinFuncion 

Funcion ejercicioCad22
	
	/// 22) Indicar si una palabra es palíndroma". Ejemplo: "ana" es palíndroma por se lee igual de inicio a fin que de fin a inicio
	
    Definir palabra, palabraInversa Como Caracteres
    Definir esPalindromo Como Logico
    Definir i, longitudPalabra Como Entero
    
    Escribir "Ingrese una palabra:"
    Leer palabra
    
    longitudPalabra = Longitud(palabra)
    esPalindromo = Verdadero
    palabraInversa = ""
    
    Para i = longitudPalabra Hasta 1 Con Paso -1 Hacer
        palabraInversa = palabraInversa + Subcadena(palabra, i, 1)
    FinPara
    
    Si palabra = palabraInversa Entonces
        Escribir "La palabra ingresada es un palíndromo."
    Sino
        Escribir "La palabra ingresada no es un palíndromo."
    FinSi
FinFuncion 

Funcion  ejercicioCad23
	
	/// 23) Presentar la posición de un carácter cualquiera dentro de una cadena"

    Definir cadena Como Caracteres
    Definir caracterBuscado Como Caracter
    Definir posiciones Como Entero // Cambia el tamaño del arreglo según sea necesario
    Definir i, j, posicion Como Entero
	Dimension posiciones[100]
    Escribir "Ingrese una cadena:"
    Leer cadena
	
    Escribir "Ingrese el carácter a buscar:"
    Leer caracterBuscado
	
    j <- 1
    posicion <- 0
    i <- 1
	
    Mientras i <= Longitud(cadena) Hacer
        Si Subcadena(cadena, i, 1) = caracterBuscado Entonces
            posiciones[j] <- i
            j <- j + 1
        FinSi
        i <- i + 1
    FinMientras
	
    Si j > 1 Entonces
        Escribir "El carácter ", caracterBuscado, " se encuentra en las posiciones:"
        i <- 1
        Mientras posiciones[i] <> 0 Hacer
            Escribir posiciones[i]
            i <- i + 1
        FinMientras
    Sino
        Escribir "El carácter ", caracterBuscado, " no se encuentra en la cadena."
    FinSi
FinFuncion 

Algoritmo MenuPrincipal
	
	// Procedimiento MenuPrincipal
	Definir opcionPrincipal, opcionNumeros, ppp, opcionCadenas, opcionArreglos, opcionEjercicio Como Entero
	
	Repetir
		Borrar Pantalla
		Escribir "Menú Principal"
		Escribir "1) Números"
		Escribir "2) Cadenas"
		Escribir "3) Arreglos"
		Escribir "4) Salir"
		Escribir "Elija una opción [1...4]: "
		Leer opcionPrincipal
		
		Segun opcionPrincipal Hacer
			1:
				Repetir
					Borrar Pantalla
					Escribir "Menú Números"
					Escribir "1) Operaciones Selectivas"
					Escribir "2) Operaciones Colectivas"
					Escribir "3) para Volver al Menú Principal tiene que ingresar 22 "
					Escribir "Elija una opción [1...3]: "
					Leer opcionNumeros
					Escribir "Escribe un numero del 1 al 21"
					leer ppp
					Segun ppp Hacer
						1:
							ejercicioNum1()// Lógica para operaciones selectivas con números
							
							// Implementar la lógica para el ejercicio de selección de números
						2:
							ejercicioNum2()// Lógica para operaciones colectivas con números
						3:
							ejercicioNum3()//
						4:
							ejercicioNum4()//
						5:
							ejercicioNum5()//
						6:
							ejercicioNum6()//
						7:
							ejercicioNum7()//
						8:
							ejercicioNum8()//
						9:
							ejercicioNum9()//
						10:
							ejercicioNum10()//
						11:
							ejercicioNum11()//
						12:
							ejercicioNum12()//
						13:
							ejercicioNum13()//
						14:
							ejercicioNum14()//
						15:
							ejercicioNum15()//
						16:
							ejercicioNum16()//
						17:
							ejercicioNum17()//<
						18:
							ejercicioNum18()//
						19:
							ejercicioNum19()//
						20:
							ejercicioNum20()//
						21:
							ejercicioNum21()//
							// Implementar la lógica para el ejercicio de colecciones de números
						22:
							Borrar Pantalla
							Escribir" digita cualquier dato o numero y regresaras a la pantalla pincipal "
							Leer opcionEjercicio// Romper // Salir del bucle
						De Otro Modo:
							Escribir "Opción inválida..."
					FinSegun
					
					Esperar 3 Segundos
				Hasta Que opcionNumeros = 3
			2:
				Repetir
					Borrar Pantalla
					Escribir "Menú Cadenas"
					Escribir "1) Operaciones Selectivas"
					Escribir "2) Operaciones Colectivas"
					Escribir "3) Para Volver al Menú Principal tiene que ingresar 22"
					Escribir "Elija una opción [1...3]: "
					Leer opcionCadenas
					Escribir "ingrese un numero del 1 al 11"
					leer ppp
					Segun ppp Hacer
						1:
							ejercicioCad1()// Lógica para operaciones selectivas con números
							
							// Implementar la lógica para el ejercicio de selección de números
						2:
							ejercicioCad2()// Lógica para operaciones colectivas con números
						3:
							ejercicioCad3()//
						4:
							ejercicioCad4()//
						5:
							ejercicioCad5()//
						6:
							ejercicioCad6()//
						7:
							ejercicioCad7()//
						8:
							ejercicioCad8()//
						9:
							ejercicioCad9()//
						10:
							ejercicioCad10()//
						11:
							ejercicioCad11()//
							
						22:
							Borrar Pantalla
							Escribir" digita cualquier dato o numero y regresaras a la pantalla pincipal "
							Leer opcionEjercicio// Romper // Salir del bucle
						De Otro Modo:
							Escribir "Opción inválida..."
					FinSegun
					Esperar 3 Segundos
				Hasta Que opcionCadenas = 3
			3:
				Repetir
					Borrar Pantalla
					Escribir "Menú Arreglos"
					Escribir "1) Operaciones Selectivas"
					Escribir "2) Operaciones Colectivas"
					Escribir "3) para Volver al Menú Principal tiene que ingrsar 24 "
					Escribir "Elija una opción [1...3]: "
					Leer opcionArreglos
					Escribir "digite un número del 12 al 23"
					Segun opcionArreglos Hacer
						12:
							ejercicioCad12()//
						13:
							ejercicioCad13()//
						14:
							ejercicioCad14()//
						15:
							ejercicioCad15()//
						16:
							ejercicioCad16()//
						17:
							ejercicioCad17()//<
						18:
							ejercicioCad18()//
						19:
							ejercicioCad19()//
						20:
							ejercicioCad20()//
						21:
							ejercicioCad21()//
							
							// Implementar la lógica para el ejercicio de colecciones de números
						22:
							ejercicioCad22()//
						23:
							ejercicioCad23()//
						24:
							Borrar Pantalla
							Escribir " digita cualquier dato o numero y regresaras a la pantalla pincipal "
							Leer opcionEjercicio// Romper // Salir del bucle
						De Otro Modo:
							Escribir "Opción inválida..."
					FinSegun
					
					Esperar 3 Segundos
					Hasta Que opcionArreglos = 3
				4:
					Escribir "Gracias por usar el sistema. Saliendo..."
				De Otro Modo:
					Escribir "Opción inválida..."
			FinSegun
			
			Esperar 2 Segundos
		Hasta Que opcionPrincipal = 4
FinAlgoritmo
