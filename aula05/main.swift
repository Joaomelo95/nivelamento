/* EXERCÍCIO DE RAIZ CÚBICA

print("Insira um número")

let number = Int(readLine()!)!
var count = 1

while count != number {
    if count * count * count == number {
        print("\(count) é a raiz cúbica de \(number)")
        break
    } else {
        count += 1
    }
}

if count == number && number != 1 {
    print("\(number) não tem raiz cúbica exata")
} else if number == 1 {
    print("A raiz cúbica de 1 é 1")
}


EXERCÍCIO DE ENCONTRAR NÚMEROS PRIMOS EM UM INTERVALO

 1. Resposta
 
print("Insira um número maior que 2")

var numero = Int(readLine()!)!
var count = 2
var countPrimo = 2
var ehPrimo = true

while numero <= 2 {
    print("Digite um número maior que 2")
    numero = Int(readLine()!)!
}

while count < numero {
    while countPrimo < count {
        if count % countPrimo == 0 && count != countPrimo {
            ehPrimo = false
        }
            countPrimo += 1
    }
    if ehPrimo {
        print(count)
    }
    count += 1
    countPrimo = 2
    ehPrimo = true
}

 2. Resposta
 
let N = Int(readLine()!)!
 
var contador = 2
 
 while contador <= N {
 
     var ehPrimo = true
 
     var divisor = 2
 while divisor < contador {
     if contador % divisor == 0 {
         ehPrimo = false
         break
     }
     divisor += 1
     }
 
     if ehPrimo == true {
     print(contador)
     }
     contador += 1
 }

 
EXERCÍCIO DE  FIBONACCI

print("Insira um número")

var numero = Int(readLine()!)!
var count = 0
var fibMenor = 1
var fibMaior = 1
var fibResult = 0

while count != numero {
    fibResult = fibMenor + fibMaior
    fibMenor = fibMaior
    fibMaior = fibResult
    count += 1
}

print(fibResult)


DESCOBRIR SE O NÚMERO É PRIMO E, SE NÃO FOR, IMPRIMIR OS DIVISORES DO NÚMERO
 

print("Insira um número")

var numero = Int(readLine()!)!
var count = 2
var countDiv = 2
var ehPrimo = true

while count < numero {
    if numero % count == 0 {
        ehPrimo = false
    }
    count += 1
}

if ehPrimo == true {
    print("\(numero) é primo!")
} else {
    print("\(numero) não é primo")
    print("Os divisores de \(numero) são:")
    while countDiv < numero {
        if numero % countDiv == 0 {
            print(countDiv)
        }
        countDiv += 1
    }
}
*/
