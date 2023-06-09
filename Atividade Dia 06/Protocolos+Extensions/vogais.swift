extension String {
    func getVowels() -> Int {
        let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
        var quant = 0
        
        for character in self {
            if vowels.contains(Character(character.lowercased())) {
                quant += 1
            }
        }
        
        return quant
    }
}

// Exemplo de uso:
let myString = "Vamos comer pizza!"
print("Frase: \(myString)")
let quantVogais = myString.getVowels()
print("Número de vogais: \(quantVogais)")
