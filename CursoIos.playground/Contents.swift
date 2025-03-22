import UIKit

// Asignacion variable
var greeting = "Hello, playground"

// Asignacion fija
let fixedGreeting = "Hello, world!"

// CHAR Asignaci[on de un solo caracter
var symbol = "!"

// Tipados

var variableString:String = "Bimbo"

var year:Int = 2025

var altura:Float = 1.445

var pi:Double = 3.14159

// Operadores aritmeticos

var a:Int = 5
var b:Int = 10

var sum = a + b
var resta = a - b
var multi = a * b
var divide = a / b
var module = a % b

// Operadores de asignacin

var example = 5
example += 10
example -= 10
example *= 10
example /= 10
example %= 10

// Operadores logicos comparacion

let age2 = 30

let isOlder = age2 >= 18
let isYounger = age2 <= 18
let isEqual = age2 == 18
let isNotEqual = age2 != 18
let isOrderOrEqual = age2 >= 18

let isSunny:Bool = true
let temperature:Int = 25

let vamosAlParque:Bool = temperature > 25 && isSunny
let goToBeach:Bool = temperature > 25 || isSunny
let wearHat:Bool = !isSunny

// Conversiones

let integerNumber:Int = 10
let decimalNumber:Double = 25.65
let superNumber = Double(integerNumber) + decimalNumber


/* Ejercicio 1

 Registro de asistencia: Declara una variable asistencias y asignale un numero de asistencias a una clase
 Declara una variable totalClases y asignale el numero total de clases
 Calcula el porcentaje de asistencia utilizando la formula : Porcentaje = (Asistencias / TotalClases) * 100
 Imprime el porcentaje de asistencia
 
 */

let asistencias:Double = 10
let totalClases:Double = 20

var Porcentaje = (asistencias / totalClases ) * 100

//print("Hola el resultado de asistencia es \(Porcentaje) ")

/* Ejercicio 2
 
 Calculadora de IMC (Indice de masa coroporal):
 Declara dos variables: Peso ( Kilogramos) y altura ( Metros )
 Calcula el IMC utilizando la formula: IMC = Peso / ( Altura * Altura )
 Imprime el resultado
 
 */

let peso:Float = 70.0
let altura2:Float = 1.70

let IMC = peso/( altura2 * altura2 )

print("Hola el resultado de IMC es \(IMC) ")

/*
 
 Ejercicio 3
 
 Calculo de descuento:
 Declara dos variables: precioOriginal y porcentajeDescuento
 Calcula el precio despues del descuento utilizando la formula
 PrecioDescuento = PrecioOriginal - ( PrecioOriginal * PorcentajeDescuento / 100)
 Imprime el precio original y el precio con descuento
 
 */

let precioOriginal : Float = 100.0
let porcentajeDescuento : Float = 20.0

let precioDescuento = precioOriginal - ( precioOriginal * porcentajeDescuento / 100 )

//print("El precio original es \(precioOriginal)")
//print("El precio con descuento \(precioDescuento)")


// Funciones

func showMyName(){
    print("Hola, es mi primera función")
}
showMyName()


func showMyCustomName(a:String){
    print(" Este es mi nombre \(a) ")
}
showMyCustomName(a: "Diego")

func calculate(a:Int , b:Int) -> Int {
    let result = a + b
    return result
}

let perro : Int = calculate(a: 10, b: 20)

print(perro)


// Condicionales

let userAge = 19

if userAge >= 18 {
    print("Eres mayor de edad")
}else{
    print("Eres menor de edad")
}

func greeting(_ hour:Int){
    if hour < 12 {
        print("Buenos días")
    }else if hour < 18{
        print("Buenas tardes")
    }else{
        print("Buenas noches")
    }
}
greeting(16)


// Switch

func getMonth(_ month:Int){
    switch month{
    case 1: print("Enero")
    case 2: print("Febrero")
    case 3: print("Marzo")
    case 4: print("Abril")
    case 5: print("Mayo")
    case 6: print("Junio")
    case 7: print("Julio")
    case 8: print("Agosto")
    case 9: print("Septiembre")
    case 10: print("Octubre")
    case 11: print("Noviembre")
    case 12: print("Diciembre")
    default: print("Introduce un mes válido")
    }
}
getMonth(5)


func getTrimester (_ month:Int){
    switch month{
    case 1,2,3: print("Primer trimestre")
    case 4,5,6: print("Segundo trimestre")
    case 7,8,9: print("Tercer trimestre")
    default: print("No es un trimestre")
    }
}
getTrimester(7)


func getSemester(_ month:Int){
    switch month{
    case 1...6: print("Primer Semestre")
    case 6...12: print("Segundo Semestre")
    default : print("No es un semestre")
    }
}
getSemester(11)


/*
 
 Ejercicio #4
 Calcula el área de un círculo:
 Crea una función que reciba el radio de un círculo y devuelva su área( PI * Radio * Radio )
 Imprime el resultado
 
 */

func calcularAreaCirculo(_ radio:Float) -> Float{
    let area = Float.pi * radio * radio
    return area
}

print(calcularAreaCirculo(5))

/*
 
 Ejercicio #5
 Crea una función que reciba un numero y con la ayuda de un IF pinte en pantalla
 si es el número positivo, negativo o cero
 
 */

func verificarNumero(_ num:Int){
    if num > 0 {
        print(" El número es positivo ")
    }else if num > 0 {
        print(" El número es negativo ")
    }else {
        print(" El número es cero ")
    }
}
verificarNumero(5)


/*
 
 Ejercicio #6
 Crea una función que reciba un número y con la ayuda de switch
 pinte en pantalla si el número es positivo, negativo o cero
 
 */

func verificarNumeroSwitch(_ num:Int){
    switch num {
    case let x where x > 0 : print("Es positivo")
    case let x where x < 0 : print("Es negativo")
    default: print("Es cero")
    }
}
verificarNumeroSwitch(-5)


// Arrays

let names:[String] = ["Ana","Pepe","Luis"]
print(names)
print(names[2])

