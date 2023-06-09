extension Int {
  var isPrime: Bool {
    if self % 2 == 0 {
      return true
    } else {
      return false
    }
  }
  
}

// Testando a lógica nos números de 1 a 100
for number in 1...100 {
  print(number.isPrime)
}