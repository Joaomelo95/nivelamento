//
//  main.swift
//  Aula03 - novo
//
//  Created by Turma Manhã on 2/23/18.
//  Copyright © 2018 Turma Manhã. All rights reserved.
//

import Foundation

print("Digite três números")

let numero1Ok = readLine()!
if let numero1 = Int(numero1Ok) {
    let numero2Ok = readLine()!
    if let numero2 = Int(numero2Ok) {
        let numero3Ok = readLine()!
        if let numero3 = Int(numero3Ok) {
            if numero1 > numero2 && numero1 > numero3 && numero2 > numero3{
                print(numero1, numero2, numero3)
            } else if numero1 > numero2 && numero1 > numero3 && numero3 > numero2 {
                print(numero1, numero3, numero2)
            } else if numero2 > numero1 && numero2 > numero3 && numero1 > numero3 {
                print(numero2, numero1, numero3)
            } else if numero2 > numero1 && numero2 > numero3 && numero3 > numero1 {
                print(numero2, numero3, numero1)
            } else if numero3 > numero1 && numero3 > numero2 && numero1 > numero2 {
                print(numero3, numero1, numero2)
            } else if numero3 > numero1 && numero3 > numero2 && numero2 > numero1 {
                print(numero3, numero2, numero1)
            }
        }
    }
}
