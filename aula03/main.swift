//
//  main.swift
//  Aula03
//
//  Created by Turma Manhã on 2/23/18.
//  Copyright © 2018 Turma Manhã. All rights reserved.
//

import Foundation

print("Olá! Digite um número entre 100 e 999")

let numero = readLine()!
if let numeroOk = Int(numero) {
    if numeroOk < 100 {
        print("Seu número é menor que 100")
        exit(0)
    } else if numeroOk > 999 {
        print("Seu número é maior que 999")
        exit(0)
    } else {
        if numeroOk % 3 == 0 {
            print("\(numeroOk) é divisível por 3!")
        } else {
            print("\(numeroOk) não é divisível por 3!")
        }
    }
}
