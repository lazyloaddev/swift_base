func sum(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func minus(_ a: Int, _ b: Int) -> Int {
    a - b
}

func sum(a: Int, andB b: Int, andMinus c: Int) -> Int {
    minus(sum(a, b), c)
}

func calc(_ a: Int, _ b: Int, _ c: Int) {
    let result = sum(a: a, andB: b, andMinus: c)
    print(result)
}

calc(1, 2, 3)

/*
for i in 0..<100 {
    print(i)
}
*/
/*
func sum(_ a: Int, _ b: Int) -> Int {
    a + b
}

func minus(_ a: Int, _ b: Int) -> Int {
    a - b
}

func sum(a: Int, andB b: Int, andMinus c: Int) -> Int {
    let summResult = sum(a, b)
    let minusResult = minus(summResult, c)
    return minusResult
}

func calc(_ a: Int, _ b: Int, _ c: Int) {
    let result = sum(a: a, andB: b, andMinus: c)
    print(result)
}

calc(1, 2, 3)
*/



/*
var a = [1, 2, 3, 4, 5]
if a.count > 5 {
    a.append(1)
} else {
    a.append(9)
}

if a.count > 5 {
    a.append(1)
} else {
    a.append(9)
}
*/
