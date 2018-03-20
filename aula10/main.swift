//
//  main.swift
//  AULA10
//
//  Created by Turma Tarde on 12/03/18.
//  Copyright © 2018 Turma Tarde. All rights reserved.
//

import Foundation


protocol Forma {
    func area() -> Double
    func igual(a outra : Forma) -> Bool
    func incluiPonto(_ ponto : Ponto) -> Bool
    func incluiForma(_ outra: Forma) -> Bool
    mutating func mover(x: Double, y: Double)
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
    
    func incluiForma(_ outra: Forma) -> Bool {
        if outra is Ponto {
            let pto = outra as! Ponto
            return self.x == pto.x && self.y == pto.y
        } else {
            return false
        }
    }
    
    func distPonto(ate outro: Ponto) -> Double {
        return sqrt((self.x-outro.x)*(self.x-outro.x) + (self.y-outro.y)*(self.y-outro.y))
    }
    
    mutating func mover(x: Double, y: Double) {
        self.x += x
        self.y += y
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
    
    func incluiForma(_ outra: Forma) -> Bool {
        if outra is Ponto {
            let pto = outra as! Ponto
            if self.incluiPonto(pto) {
                return true
            } else {
                return false
            }
        } else if outra is Retangulo {
            let ret = outra as! Retangulo
            if abs(self.ladoX - ret.ladoX) <= self.ladoX / 2 && abs(self.ladoY - ret.ladoY) <= self.ladoY / 2 {
                return true
            } else {
                return false
            }
        } else if outra is Circulo {
            let circ = outra as! Circulo
            if abs(self.ladoX - circ.raio) <= self.ladoX / 2 && abs(self.ladoY - circ.raio) <= self.ladoY / 2 {
                return true
            } else {
                return false
            }
        } else {
            return false
        }
    }
    
    mutating func mover(x: Double, y: Double) {
        self.centro.x += x
        self.centro.y += y
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
    
    func incluiPonto(_ ponto: Ponto) -> Bool {
        if centro.distPonto(ate: ponto) <= raio {
            return true
        } else {
            return false
        }
    }
    
    func incluiForma(_ outra: Forma) -> Bool {
        if outra is Ponto {
            let pto = outra as! Ponto
            if self.incluiPonto(pto) {
                return true
            } else {
                return false
            }
        } else if outra is Retangulo {
            let ret = outra as! Retangulo
            if self.centro.incluiPonto(ret.centro) && ret.ladoX <= self.raio && ret.ladoY <= self.raio {
                return true
            } else {
                return false
            }
        } else if outra is Circulo {
            let circ = outra as! Circulo
            if self.centro.incluiPonto(circ.centro) && circ.raio <= self.raio {
                return true
            } else {
                return false
            }
        } else {
            return false
        }
    }
    
    mutating func mover(x: Double, y: Double) {
        self.centro.x += x
        self.centro.y += y
    }
    
}

