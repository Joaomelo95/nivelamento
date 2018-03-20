//
//  main.swift
//  Aula02 - versão2
//
//  Created by Turma Manhã on 22/02/18.
//  Copyright © 2018 Turma Manhã. All rights reserved.
//

import Foundation

print("Adivinhe o número! \nJogador 1, escolha um número")

let numeroescolhido = readLine()

print("\n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n")

print("Jogador 2, tente adivinhar! Você tem três tentativas")

var palpite = readLine()
if let palpiteOk = palpite {
    if let palpiteMesmo = Int(palpiteOk) {
        print("deboas")
        if let numeroOk = numeroescolhido {
            if let numeroMesmo = Int(numeroOk) {
                print("deboas")
                if palpiteMesmo == numeroMesmo {
                    print("Parabéns! Você acertou!")
                    exit(0)
                } else if palpiteMesmo > numeroMesmo {
                    print("Seu número é maior que o escolhido! Restam duas tentativas")
                } else {
                    print("Seu número é menor que o escolhido! Restam duas tentativas")
                    
                    palpite = readLine()
    }
   
            }
        }
    }
}




