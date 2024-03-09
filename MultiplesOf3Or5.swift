// Project Euler - Multiples of 3 or 5

func multiplesOf(first valueOne: Int, second valueTwo: Int, range: Int) {
    let v1 = valueOne
    let v2 = valueTwo
    var sum: Int = 0

    var counter = 1
    
    for _ in 0...range-3 {
        counter += 1
        if counter % v1 == 0 {
            sum += counter
        }
        
        if counter % v2 == 0 {
            sum += counter
        }
    }
    
    print(sum)
}
