extension Int {
  var fizzBuzz: String {
    if self % 3 == 0 {
      return "Fizz"
    } else if self % 5 == 0 {
      return "Buzz"
    } else if self % 3 == 0 && self % 5 == 0 {
      return "Fizz Buzz"
    } else {
      return String(self)
    }
  }
  
}
// Testando a lógica em 100 números inteiros
for number in 1...100 {
  print(number.fizzBuzz)
}
