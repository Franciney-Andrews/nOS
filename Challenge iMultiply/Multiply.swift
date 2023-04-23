import Foundation

var score = 0

for _ in 1...10 {
    // Gerar dois números aleatórios
    let number1 = Int.random(in: 0...13)
    let number2 = Int.random(in: 0...13)
    
    // Escolher uma operação aleatória
    let operation = Int.random(in: 0...2)
    
    var result: Int
    
    switch operation {
    case 0:
        result = number1 + number2
        print("\(number1) + \(number2) = ", terminator: "")
    case 1:
        result = number1 - number2
        print("\(number1) - \(number2) = ", terminator: "")
    case 2:
        result = number1 * number2
        print("\(number1) * \(number2) = ", terminator: "")
    default:
        fatalError("Operação inválida")
    }
    
    // Ler a resposta do usuário
    guard let input = readLine(), let answer = Int(input) else {
        fatalError("Entrada inválida")
    }
    
    // Verificar se a resposta está correta
    if answer == result {
        print("Resposta correta!")
        score += 1
    } else {
        print("Resposta incorreta!")
    }
}

// Mostrar o resultado final
print("Seu score final é \(score)")
