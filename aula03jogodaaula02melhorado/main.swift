//
//  main.swift
//  Aula03 - ADIVINHAÇÃO MELHORADA
//
//  Created by Turma Manhã on 2/23/18.
//  Copyright © 2018 Turma Manhã. All rights reserved.
//

import Foundation

print("Jogo de Adivinhação!\nJogador 1, selecione um número")

var numero = readLine()!
var ehNumero = false
var escolhido = 0

while !ehNumero {
    if var numeroOk = Int(numero) {
        escolhido = numeroOk
        ehNumero = true
    } else {
        print("Por favor, digite um número!")
        numero = readLine()!
    }
}


var linhas = 200

while linhas > 0 {
    print()
    linhas -= 1
}

print("Jogador 2, tente acertar!")

var tentativas = 5

while tentativas > 0 {

var resposta = readLine()!
var palNumero = false
var palpite = 0

while !palNumero {
    if var respostaOk = Int(resposta) {
        palpite = respostaOk
        palNumero = true
    } else {
        print("Por favor, digite um número!")
        resposta = readLine()!
    }
}

    if palpite == escolhido {
        print("Parabéns! Você acertou")
        exit(0)
    } else {
        if palpite > escolhido {
            print("Seu número é maior que a resposta!")
        } else {
            print("Seu número é menor que a resposta!")
        }
        tentativas -= 1
    }
}

print("A resposta é \(escolhido)")
print("Game over")
