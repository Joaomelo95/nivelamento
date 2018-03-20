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

struct Ponto {
    var pontoX : Double
    var pontoY : Double
}

struct Retangulo {
    var ladoX : Double
    var ladoY : Double
    var centro : Ponto
    
    init(ladoX : Double, ladoY : Double, centro : Ponto) {
        self.ladoX = ladoX
        self.ladoY = ladoY
        self.centro = centro
    }
    
    func areaRetangulo() -> Double {
        var area = self.ladoX * self.ladoY
        return area
    }
    
    func retsIguais(_ retY : Retangulo) -> Bool {
        var ehIgual = true
        if self.ladoX != retY.ladoX || self.ladoY != retY.ladoX {
            ehIgual = false
        }
        return ehIgual
    }
    
    func distPonto(_ ponto : Ponto) -> [Double] {
        var distanciaX = self.centro.pontoX - ponto.pontoX
        var distanciaY = self.centro.pontoY - ponto.pontoY
        var arrayDist = [distanciaX, distanciaY]
        return arrayDist
    }
}
 


var retangulo1 = Retangulo(ladoX: 10.0, ladoY: 11.0, centro: Ponto(pontoX: 3.0, pontoY: 2.0))
var retangulo2 = Retangulo(ladoX: 10.0, ladoY: 12.0, centro: Ponto(pontoX: 4.0, pontoY: 5.0))

print(retangulo1.distPonto(Ponto(pontoX: 3.0, pontoY: 3.0)))


struct Pokemon {
    var nome : String
    var tipo : [String]
    var hpTotal : Int
    var hpAtual : Int
    var ataques : [Ataque]
    
    mutating func dano(_ danorecebido : Int) -> Int {
        self.hpAtual = self.hpAtual - danorecebido
        return self.hpAtual
    }
}

struct Ataque {
    var nomeDoAtk : String
    var dano : Int
}

var thunder = Ataque(nomeDoAtk: "Thunder", dano: 10)
var quickAtk = Ataque(nomeDoAtk: "Quick Attack", dano: 5)

var pikachu = Pokemon(nome: "Pikachu", tipo: ["Elétrico"], hpTotal: 100, hpAtual: 100, ataques: [thunder])

var pidgey = Pokemon(nome: "Pidgey", tipo: ["Voador"], hpTotal: 70, hpAtual: 70, ataques: [quickAtk])

func atk(_ poke1 : Pokemon, _ poke2 : inout Pokemon) -> String {
    var danoDeAtk = ("\(poke1.nome) usou \(poke1.ataques[0].nomeDoAtk) e O HP atual de \(poke2.nome) agora é \(poke2.dano(poke1.ataques[0].dano))")
    return danoDeAtk
}

print(atk(pikachu, &pidgey))
*/

//FAÇA COM QUE RETANGULO E CIRCULO

protocol Forma {
    func area() -> Double
    func igual(a outra : Forma) -> Bool
    func incluiPonto(_ ponto : Ponto) -> Bool
}

struct Ponto : Forma {
    var x : Double
    var y : Double
    
    func area() -> Double {
        return 0
    }
    
    func igual(a outra : Forma) -> Bool {
        if outra is Ponto {
            let pto = outra as! Ponto
            return self.x == pto.x && self.y == pto.y
        } else {
            return false
        }
    }
    
    func incluiPonto(_ ponto: Ponto) -> Bool {
        if self.x != ponto.x || self.y != ponto.y {
            return false
        } else {
            return true
        }
    }
}

struct Retangulo : Forma {
    var ladoX : Double
    var ladoY : Double
    var centro : Ponto
    
    func area() -> Double {
        return ladoX * ladoY
    }
    func igual(a outra : Forma) -> Bool {
        if outra is Retangulo {
            let ret = outra as! Retangulo
            return self.ladoX == ret.ladoX && self.ladoY == ret.ladoY && self.centro.igual(a: ret.centro)
        } else {
            return false
        }
    }
    
    func incluiPonto(_ ponto: Ponto) -> Bool {
        if ponto.x <= centro.x + ladoX / 2 &&  ponto.x >= centro.x - ladoX / 2 && ponto.y <= centro.y + ladoY / 2 && ponto.y >= centro.y - ladoY / 2 {
            return true
        } else {
            return false
        }
        
    }
}


struct Circulo : Forma {
    var raio : Double
    var centro : Ponto
    
    func area() -> Double {
        return raio * raio * Double.pi
    }
    
    func igual(a outra : Forma) -> Bool {
        if outra is Retangulo {
            let circ = outra as! Circulo
            return self.raio == circ.raio && self.centro.igual(a: circ.centro)
        } else {
            return false
        }
    }
    
}














