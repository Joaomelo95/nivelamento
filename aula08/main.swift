//
//  main.swift
//  AULA08
//
//  Created by Turma Tarde on 3/5/18.
//  Copyright © 2018 Turma Tarde. All rights reserved.
//

import Foundation

/*

 
 EXERCÍCIO CALCULAR QUADRADO
 
func quadrado(_ x:Int) -> Int {
  var rolou = x * x
  return rolou
}

 
 EXERCÍCIO SOMAR QUADRADOS
 
func somaQuadrado(_ x:Int, _ y:Int) -> Int {
  var rolou = quadrado(x) + quadrado(y)
  return rolou
}


 EXERCÍCIO FUNÇÃO DE POTENCIACAO
 
func potencia(_ x:Int, _ y:Int) -> Int {
  var count = 1
  var rolou = 1
  while count <= y{
    rolou = rolou * x
    count += 1
  }
  return rolou
}


 EXERCÍCIO DEFINIR RETANGULO E CRIAR FUNCOES PARA CALCULAR SUA ÁREA, SE É IGUAL A OUTRO RETANGULO DADO E SUA DISTANCIA PARA UM PONTO QUALQUER

struct Retangulo {
  var ladoX : Double
  var ladoY : Double
  var centro : [Double]
  
  init(ladoX : Double, ladoY : Double) {
    self.ladoX = ladoX
    self.ladoY = ladoY
    self.centro = [(ladoX / 2), (ladoY / 2)]
    }
  
  func areaRetangulo() -> Double {
    var area = self.ladoX * self.ladoY
    return area
  }
  
  func retangulosIguais(_ x: Double, _ y: Double) -> Bool {
    var ehIgual = true
    if x == ladoX && y == ladoY {
      return ehIgual
    } else {
      ehIgual = false
    }
    return ehIgual
  }

  func distanciaRetangulo(_ x: Double, _ y: Double) -> [Double] {
    var arrayDist: [Double] = []
    arrayDist.append(ladoX - x)
    arrayDist.append(ladoY - y)
    return arrayDist
  }
}
*/
