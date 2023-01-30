protocol IntContainer: Equatable {
    var value: Int { get }
}

struct IntContainerOne: IntContainer {
    let value: Int
}

extension IntContainerOne: Equatable {
    static func == (lhs: IntContainerOne, rhs: IntContainerOne) -> Bool {
        lhs.value == rhs.value
    }
}

struct IntContainerTwo: IntContainer {
    let value: Int
}

extension IntContainerTwo: Equatable {
    static func == (lhs: IntContainerTwo, rhs: IntContainerTwo) -> Bool {
        lhs.value == rhs.value
    }
}


func makeContainerFourth(value: Int) -> some IntContainer {
    IntContainerOne(value: value)
}


@main
struct Application {
    static func main() throws {
        let a = makeContainerFourth(value: 1)
        let b = makeContainerFourth(value: 1)
        print(a == b)
    }
}


/*
 let a: IntContainerOne = makeContainerOne()
 let b: IntContainer = makeContainerTwo()
 let c: IntContainer = makeContainerFourth()
 
 let a = makeContainerOne()
 let b = makeContainerTwo()
 let c = makeContainerFourth()

 print(a, b, c, c)
 
 func makeContainerFourth() -> some IntContainer {
     IntContainerOne(value: 2)
 }
 
 func makeContainerTwo(value: Int) -> any IntContainer {
     if value % 2 == 0 {
         return IntContainerOne(value: value)
     } else {
         return IntContainerTwo(value: value)
     }
 }
 
 protocol IntContainer {
     var value: Int { get }
 }

 struct IntContainerOne: IntContainer {
     let value: Int
 }

 struct IntContainerTwo: IntContainer {
     let value: Int
 }

 func makeContainerTwo(value: Int) -> IntContainer {
     if value % 2 == 0 {
         return IntContainerOne(value: value)
     } else {
         return IntContainerTwo(value: value)
     }
 }
 
 func makeContainerTwo() -> IntContainer {
     IntContainerOne(value: 2)
 }
 
 func makeContainerOne() -> IntContainerOne {
     IntContainerOne(value: 2)
 }
 
 protocol IntContainer {
     var value: Int { get }
 }

 struct IntContainerOne: IntContainer {
     let value: Int
 }
 */
