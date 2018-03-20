//
//  main.swift
//  Aula02
//
//  Created by Turma Manhã on 22/02/18.
//  Copyright © 2018 Turma Manhã. All rights reserved.
//

import Foundation

print("Adivinhe o número! \nJogador 1, insira um número")

let numeroresp = Int(readLine()!)!

print("\n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n")

print("Jogador 2, tente adivinhar! Você tem três tentativas \nTentativa 1:")

let tentativa1 = Int(readLine()!)!

if tentativa1 == numeroresp {
    print("Parabéns, você acertou!")
    exit(0)
} else if tentativa1 > numeroresp {
    print("Seu número é maior que a resposta! Tente novamente")
} else {
    print("Seu número é menor que a resposta! Tente novamente")
}

let tentativa2 = Int(readLine()!)!

if tentativa2 == numeroresp {
    print("Parabéns, você acertou!")
    exit(0)
} else if tentativa2 > numeroresp {
    print("Seu número é maior que a resposta! Tente novamente")
} else {
    print("Seu número é menor que a resposta! Tente novamente")
}

let tentativa3 = Int(readLine()!)!

if tentativa3 == numeroresp {
    print("Parabéns, você acertou!")
} else if tentativa3 > numeroresp {
    print("Seu número é maior que a resposta! O número certo é \(numeroresp). Melhor sorte na próxima!")
} else {
    print("Seu número é menor que a resposta! O número certo é \(numeroresp). Melhor sorte na próxima!")
}
