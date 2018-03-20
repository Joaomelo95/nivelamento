import Foundation

//Construa um cadastro de alunos. Para cada aluno, seu programa deve registrar CPF (único), nome e lista de disciplinas cursadas, com código, nome e semestre que foi cursada.
//
//Seu programa deve ter funções para gravar um aluno na memória, verificar se um aluno está registrado, com base em seu CPF, remover um aluno com base em seu CPF, cadastrar uma disciplina cursada e verificar se um aluno já cursou uma disciplina com determinado código.


struct Aluno {
    var nome:String
    var CPF:String
    var disciplinas:[Disciplina]
}

struct Disciplina {
    var nome:String
    var codigo:String
    var semestre:String
}
var alunosDict : [String : Aluno] = [:]
var discipDict : [String : Disciplina] = [:]

var rodarPrograma = true

while rodarPrograma == true {
    print("\nSelecione uma operação:\na) Criar novo aluno\nb) Encontrar aluno\nc) Remover aluno\nd) Cadastrar disciplina para um aluno\ne) Verificar se um aluno cursou determinada disciplina\nf) Encerrar programa")
    var selecaoOp = readLine()!
    
    if selecaoOp.lowercased() == "a" {
        print("Digite o nome do aluno")
        var nomeDoAluno = readLine()!
        print("Insira seu CPF")
        var cpfDoAluno = readLine()!
        while alunosDict[cpfDoAluno] != nil && rodarPrograma == true {
            print("Esse CPF já está cadastrado!")
            print("Deseja cancelar a operação? Digite 's'para 'sim' e 'n' para 'nao'")
            var escolhaCPF = readLine()!
            if escolhaCPF.lowercased() == "s"{
                print("Encerrando sessão")
                rodarPrograma = false
            } else if escolhaCPF.lowercased() == "n" {
                print("Digite um novo CPF")
                cpfDoAluno = readLine()!
            } else {
                print("Por favor digite uma opção válida")
                escolhaCPF = readLine()!
            }
            
        }
        var fichaDeAluno = Aluno(nome: nomeDoAluno, CPF: cpfDoAluno, disciplinas: [])
        alunosDict[cpfDoAluno] = fichaDeAluno
        
    } else if selecaoOp.lowercased() == "b" {
        
    } else if selecaoOp.lowercased() == "c" {
        
    } else if selecaoOp.lowercased() == "d" {
        
    } else if selecaoOp.lowercased() == "e" {
        
    } else if selecaoOp.lowercased() == "f" {
        print("Encerrando sessão")
        rodarPrograma = false
    } else {
        print("Por favor, digite uma opção válida")
        selecaoOp = readLine()!
    }
    
}

