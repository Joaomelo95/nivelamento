//
//  main.swift
//  Aula03 - calculadora
//
//  Created by Turma Manhã on 2/23/18.
//  Copyright © 2018 Turma Manhã. All rights reserved.
//

import Foundation

print("Selecione a operação! \n+ \n- \n/ \n*")

let operacao = readLine()
if operacao == "+" {
    print("Digite os números desejados")
    let soma1 = Double(readLine()!)!
    let soma2 = Double(readLine()!)!
    print(soma1 + soma2)
} else if operacao == "-" {
    print("Digite os números desejados")
    let subtracao1 = Double(readLine()!)!
    let subtracao2 = Double(readLine()!)!
    print(subtracao1 - subtracao2)
} else if operacao == "/" {
    print("Digite os números desejados")
    let divisao1 = Double(readLine()!)!
    let divisao2 = Double(readLine()!)!
    if divisao2 == 0 {
        print("É impossível dividir por 0")
    } else {
     print(divisao1 / divisao2)
    }
} else if operacao == "*" {
    print("Digite os números desejados")
    let multi1 = Double(readLine()!)!
    let multi2 = Double(readLine()!)!
    if multi2 == 0 {
    print(multi1 * multi2)
}
} else {
    print("Operação inválida")
}
