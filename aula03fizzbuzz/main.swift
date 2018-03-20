//
//  main.swift
//  Aula03 - Fizz
//
//  Created by Turma Manhã on 2/23/18.
//  Copyright © 2018 Turma Manhã. All rights reserved.
//

import Foundation

var conta = 0

while conta < 100 {
    conta += 1
    if conta % 3 == 0 && conta % 5 == 0 {
        print("FizzBuzz")
    } else if conta % 3 == 0 {
        print("Fizz")
    } else if conta % 5 == 0 {
        print("Buzz")
    } else {
    print(conta)
    }
}
