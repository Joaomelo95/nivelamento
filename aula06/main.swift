/* SOMAR ELEMENTOS DE UM ARRAY

let int = [1]
var x = 0
var y = 1
var soma = 0
var count = 0

if int.count == 1 {
    soma = int[0]
} else if int.count == 2 {
soma = int[x] + int[y]
 } else if int.count > 2 {
    soma = int[x] + int[y]
    y = 2
    while y < int.count {
        soma += int[y]
        y += 1
 }
}
print(soma)


LER O MAIOR NÚMERO DA ARRAY
 
let int = [2, 40, 15, 63]
var count = 0
var intCount = 0
var maior = 0

while intCount < int.count {
    if int[intCount] > maior {
        maior = int[intCount]
    }
    intCount += 1
}

print(maior)
 
 
 TIRAR NÚMEROS DA ARRAY CUJO DECIMAL SEJA DIFERENTE DE ZERO
 
 var arr = [1, 1.1, 2, 2.2, 3, 3.3]
 var count = 0
 while count < arr.count {
   let numero = arr[count]
   if numero.remainder(dividingBy: 1) != 0 {
   arr.remove(at: count)
 } else {
   count += 1
 }
 }


 SEPARAR NÚMEROS ÍMPARES DE DUAS ARRAYS DIFERENTES E FORMAR UMA NOVA ARRAY
 
let primeiraArray = [1, 2, 3, 4, 5, 6, 7, 8, 9]
let segundaArray = [11, 12, 13, 14, 15]
var arrayTotal: [Int] = []
var count = 0

while count < primeiraArray.count {
    if primeiraArray[count] % 2 != 0 {
        arrayTotal.append(primeiraArray[count])
    }
    count += 1
}

count = 0

while count < segundaArray.count {
    if segundaArray[count] % 2 != 0 {
        arrayTotal.append(segundaArray[count])
    }
    count += 1
}

print(arrayTotal)

 
 CRIE UMA ARRAY COM NÚMEROS QUE ESTEJAM APENAS NA ARRAY A1
 
 var a1 = [12,34,4567,100,4]
 var a2 = [12,377, 90, 78, 4]
 var a3 :[Int] = []
 var posicao1 = 0
 var posicao2 = 0
 
 while posicao1 < a1.count{
    while posicao2 < a2.count{
        if a1[posicao1] == a2[posicao2]{
        break
        } else{
        if posicao2 == a2.count - 1{
            a3.append(a1[posicao1])
            break
            }
        }
    posicao2 += 1
    }
    posicao1 += 1
    }
 print(a3)
 
 
 CRIE UM FOR LOOP QUE SOMA O QUADRADO DE TODOS OS ELEMENTOS
 
var array = [1,2,3,4,5,6]
var quadrado = 0
var soma = 0

for number in array {
    quadrado = number * number
    soma += quadrado
}

print(soma)

 
CRIAR JOGO DE TRIVIA COM STRUCTURE E ARRAY

struct Pergunta {
    var questao:String
    var resposta:String
}

var perg1 = Pergunta(questao: "Em que ano o álbum AM, da banda Arctic Monkeys, foi lançado?", resposta: "2013")

var perg2 = Pergunta(questao: "Que ator é o maior ganhador do Oscar na categoria 'Melhor Ator'?", resposta: "Daniel Day-Lewis")


let arrayPerguntas = [perg1, perg2]
var score = 0

for pergunta in arrayPerguntas {
    print(pergunta.questao)
    var palpite = readLine()!
    if palpite == pergunta.resposta {
        print("Você acertou!")
        score += 1
    } else {
        print("Errou, seu trouxa")
        score -= 1
    }
}
*/

struct Jogador {
    var nome:String
}

var jogador1:String
var jogador2:String

print("Oi! Quantos jogadores irão jogar? (limite de 2 jogadores)")

var numJogadores = Int(readLine()!)!

while numJogadores < 1 || numJogadores > 2 {
    print("Por favor, escolha um número de 1 a 2")
    numJogadores = Int(readLine()!)!
}

print("Quem serão os jogadores?")

if numJogadores == 1 {
    print("Nome do jogador 1:")
    jogador1 = readLine()!
} else if numJogadores == 2 {
    print("Nome do jogador 1:")
    jogador1 = readLine()!
    print("Nome do jogador 2:")
    jogador2 = readLine()!

print("Vamos começar!")

struct Pergunta {
    var questao:String
    var resposta:String
}

var perg1 = Pergunta(questao: "Em que ano o álbum AM, da banda Arctic Monkeys, foi lançado?", resposta: "2013")

var perg2 = Pergunta(questao: "Que ator é o maior ganhador do Oscar na categoria 'Melhor Ator'?", resposta: "Daniel Day-Lewis")


let arrayPerguntas = [perg1, perg2]
var scoreJog1 = 0
var scoreJog2 = 0
    
if numJogadores == 1 {
    for pergunta in arrayPerguntas {
        print(pergunta.questao)
        var palpite = readLine()!
        if palpite == pergunta.resposta {
            print("Você acertou!")
            scoreJog1 += 1
        } else {
            print("Errou, seu trouxa")
            scoreJog1 -= 1
        }
    }
}

if numJogadores == 2 {
    for pergunta in arrayPerguntas {
        print(pergunta.questao)
        var palpite = readLine()!
        if palpite == pergunta.resposta {
            print("Você acertou!")
            scoreJog1 += 1
        } else {
            print("Errou, seu trouxa")
            scoreJog2 -= 1
            print("Vez do Jogador2")
            print(pergunta.questao)
            var palpite = readLine()!
            if palpite == pergunta.resposta {
                print("Você acertou!")
                scoreJog1 += 2
            } else {
                print("Errou, seu trouxa")
                scoreJog2 -= 1
            }
        }
    }
}
}
