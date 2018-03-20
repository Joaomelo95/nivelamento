import Foundation

/*
 EXERCÍCIO DE SOMA DOS NÚMEROS
 
 print("Escolha um número")

var soma = 0
var numeroEscolhido = readLine()!
var numero = Int(numeroEscolhido)!
var caracteres = numeroEscolhido.count

var multiplicacao = 1
var count = 1
while count < caracteres {
 multiplicacao = multiplicacao * 10
 count = count + 1
}

while multiplicacao >= 1 {
    soma = soma + (numero/multiplicacao) % 10
    multiplicacao /= 10
}
print(soma)

 
 EXERCÍCIO DE NÚMEROS PRIMOS
1. Primeira opção de resposta
var numero = Int(readLine()!)!
var count = 2
var ehPrimo = true

while count < numero {
    if numero % count == 0 {
        ehPrimo = false
    }
    count += 1
}

if ehPrimo == true {
    print("É primo!")
} else {
    print("Não é primo")
}

 2. Segunda opção de resposta
 
 let numero = Int(readLine()!)!
 var div = 2
 
 while div != numero {
     if numero % div == 0 {
     print("Não é primo")
     break
     }
     div += 1
 }
 
 if div == numero {
     print ("É primo")
 }

 
 EXERCÍCIO DE SOMA DOS NÚMEROS DENTRO DE UM INTERVALO

let numero = Int(readLine()!)!
var count = 1
var soma = 0

while count <= numero {
    soma += count
    count += 1
}

print(soma)
*/
