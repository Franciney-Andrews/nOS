//
//  main.swift
//  qualifica
//
//  Created by user on 28/05/23.
//

import Foundation


// Definir a estrutura do funcionário
struct Cadastro {
    var name: String
    var position: String
    var salary: Double
}

// Classe principal do aplicativo
class CadastroManager {
    var funcionarios: [Cadastro] = []
    
    // Função para cadastrar um funcionário
    func addCadastro() {
        print("Cadastro de funcionário")
        
        print("Digite o nome do funcionário:")
        let name = readLine() ?? ""
        
        print("Digite o cargo do funcionário:")
        let position = readLine() ?? ""
        
        print("Digite o salário do funcionário:")
        let salaryString = readLine() ?? ""
        let salary = Double(salaryString) ?? 0.0
        
        let funcionario = Cadastro(name: name, position: position, salary: salary)
        funcionarios.append(funcionario)
        
        print("Funcionário cadastrado com sucesso!")
    }
    
    // Função para listar todos os funcionários
    func listCadastro() {
        print("Lista de funcionários:")
        for funcionario in funcionarios {
            print("Nome: \(funcionario.name)")
            print("Cargo: \(funcionario.position)")
            print("Salário: \(funcionario.salary)")
            print("-------------------------")
        }
    }
    
    // Função para excluir um funcionário por nome
    func deleteCadastroByName() {
        print("Digite o nome do funcionário que deseja excluir:")
        let name = readLine() ?? ""
        
        if let index = funcionarios.firstIndex(where: { $0.name == name }) {
            funcionarios.remove(at: index)
            print("Funcionário removido com sucesso!")
        } else {
            print("Funcionário não encontrado.")
        }
    }
    
    // Função principal para executar o aplicativo
    func run() {
        var sairAgora = false
        
        while !sairAgora {
            print("Selecione uma opção:")
            print("1 - Cadastrar funcionário")
            print("2 - Listar funcionários")
            print("3 - Excluir funcionário")
            print("4 - Sair")
            
            let opcaoString = readLine() ?? ""
            
            if let opcao = Int(opcaoString) {
                switch opcao {
                case 1:
                    addCadastro()
                case 2:
                    listCadastro()
                case 3:
                    deleteCadastroByName()
                case 4:
                    sairAgora = true
                default:
                    print("Opção inválida. Tente novamente.")
                }
            } else {
                print("Opção inválida. Tente novamente.")
            }
            
            print("\n")
        }
    }
}

// Instanciar e executar o aplicativo
let manager = CadastroManager()
manager.run()