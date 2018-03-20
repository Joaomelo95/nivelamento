import Foundation

//Construa um cadastro de alunos. Para cada aluno, seu programa deve registrar CPF (único), nome e lista de disciplinas cursadas, com código, nome e semestre que foi cursada.
//
//Seu programa deve ter funções para gravar um aluno na memória, verificar se um aluno está registrado, com base em seu CPF, remover um aluno com base em seu CPF, cadastrar uma disciplina cursada e verificar se um aluno já cursou uma disciplina com determinado código.
struct Aluno {
    var nome:String
    var CPF:String
    var disciplinas:[Disciplinas]
}

struct Disciplinas {
    var nome:String
    var codigo:String
    var semestre:String
}

var alunosArray:[Aluno] = []
var discipArray:[Disciplinas] = []
var continuarRodando = false
var continuarRodandoDisciplinas = true
var fichaDoAluno:Aluno
var fichaDasDisciplinas:Disciplinas


print("O que você deseja fazer? \na) Gravar novo aluno\nb) Procurar por aluno\nc) Remover um aluno\nd) Cadastrar disciplina cursada\ne) Verificar estudo de disciplina\n(Por favor, digite a letra desejada)")
var opcaoEscolhida = readLine()!

if opcaoEscolhida.lowercased() == "a" {
    print("Digite o nome do aluno")
    var nomeDoAluno = readLine()!
    print("Digite o CPF do aluno?")
    var CPF = readLine()!
    fichaDoAluno = Aluno(nome: nomeDoAluno, CPF: CPF, disciplinas: [])
    while continuarRodandoDisciplinas == true {
        print("Digite o nome de uma das disciplinas que o aluno está cursando")
        var nomeDaDisciplina = readLine()!
        print("Qual o código dessa disciplina?")
        var codDaDisciplina = readLine()!
        print("Em qual semestre está pagando disciplina?")
        var semestreDaDisciplina = readLine()!
        print("Ainda há alguma disciplina para adicionar? Digite 's' para 'sim' ou 'n' para 'nao'")
        var respostaDisciplina = readLine()!
        if respostaDisciplina.lowercased() == "n" {
            fichaDasDisciplinas = Disciplinas(nome: nomeDaDisciplina, codigo: codDaDisciplina, semestre: semestreDaDisciplina)
            discipArray.append(fichaDasDisciplinas)
            break
        } else if respostaDisciplina.lowercased() == "s"{
            fichaDasDisciplinas = Disciplinas(nome: nomeDaDisciplina, codigo: codDaDisciplina, semestre: semestreDaDisciplina)
            discipArray.append(fichaDasDisciplinas)
            //alunosArray[0].disciplinas.append(fichaDasDisciplinas)
        } else {
            print("Digite uma resposta válida")
            respostaDisciplina = readLine()!
        }
    }
}
