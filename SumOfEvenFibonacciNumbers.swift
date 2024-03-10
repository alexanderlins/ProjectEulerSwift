func sumOfEvenFibonacciNumbers(_ range: Int) {
    var lista: [Int] = [0, 1]
    var sum: Int = 0
    
    while true {
        let nextFib = lista[0] + lista[1]
        
        if nextFib > range {
            break
        }
        
        if nextFib % 2 == 0 {
            sum += nextFib
        }
        
        lista = [lista[1], nextFib]
    }
    
    print(sum)
}
