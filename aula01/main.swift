//
//  main.swift
//  Aula01 - tentativa 2
//
//  Created by Turma Manhã on 21/02/18.
//  Copyright © 2018 Turma Manhã. All rights reserved.
//

import Foundation

var score = 0

let pergunta1 = "Que jogador de futebol inglês era conhecido como 'Super Frank'?"
let respostap1 = "Frank Lampard"

let pergunta2 = "George Harrison foi responsável pela produção de um dos filmes mais controversos de todos os tempos. Qual é o nome do filme?"
let respostap2 = "A Vida de Brian"

let pergunta3 = "Qual o nome do gato da família dos Simpsons?"
let respostap3 = "Bola de Neve"

let pergunta4 = "Em que ano o primeiro Star Wars foi lançado?"
let respostap4 = "1977"

let pergunta5 = "Quem é o maior ganhador do Oscar na categoria 'Melhor Ator'?"
let respostap5 = "Daniel Day-Lewis"

print(pergunta1)

var palpite = readLine()
if palpite == respostap1 {
    print("Boa")
    score += 1
} else {
    print("Que bela bosta")
}

print(pergunta2)

palpite = readLine()
if palpite == respostap2 {
    print("Boa")
    score += 1
} else {
    print("Que bela bosta")
}

print(pergunta3)

palpite = readLine()
if palpite == respostap3 {
    print("Boa")
    score += 1
} else {
    print("Que bela bosta")
}

print(pergunta4)

palpite = readLine()
if palpite == respostap4 {
    print("Boa")
    score += 1
} else {
    print("Que bela bosta")
}

print(pergunta5)

palpite = readLine()
if palpite == respostap5 {
    print("Boa")
    score += 1
} else {
    print ("Que bela bosta")
}

print("Fim de jogo! Pontuação: \(score)")
