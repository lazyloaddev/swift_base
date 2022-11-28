
//struct Some<T> {
//    let data: T
//
//    func copy() -> Some {
//        return Some(data: data)
//    }
//}

protocol Container {
    associatedtype T
    var value: T { get }
    
    init(value: T)
}

struct Some: Container {
    var value: Int
    
    
}

struct Example<C> where C: Container, C.T == Int {
    let a: C
    let b: C
    let c: [C]
    
    func sum(a: C, b: C) -> C {
        let result = a.value + b.value
        return C(value: result)
    }
}

@main
struct Application {
    static func main() throws {
        
    }
}

/*
 protocol Container {
     associatedtype T
     var value: T { get }
 }

 struct Some: Container {
     var value: Int
 }

 struct Example {
     let a: any Container
     let b: any Container
     let c: [any Container]
     
     func sum(a: any Container, b: any Container) -> any Container {
         return Some(value: 1)
     }
 }
 */
/*
 struct Container<T> {
     let value: T
 }

 struct Example {
     let a: Container<Int>
     let b: Container<Int>
     let c: [Container<Int>]
     
     func sum(a: Container<Int>, b: Container<Int>) -> Container<Int> {
         let result = a.value + b.value
         return Container<Int>(value: result)
     }
 }
 */
/*
 protocol IntContainer {
     var value: Int { get }
 }

 struct Some: IntContainer {
     var value: Int
 }

 struct Example {
     let a: IntContainer
     let b: IntContainer
     let c: [IntContainer]
     
     func sum(a: IntContainer, b: IntContainer) -> IntContainer {
         let result = a.value + b.value
         return Some(value: result)
     }
 }
 */
/*
 struct Container<T> {
     let value: T
 }

 struct Example {
     let a: Container
     let b: Container
     let c: [Container]
     
     func sum(a: Container, b: Container) -> Container {
         let result = a.value + b.value
         return Container(value: result)
     }
 }
 */
/*
 struct Example {
     let a: Int
     let b: Int
     let c: [Int]
     
     func sum(a: Int, b: Int) -> Int {
         a + b
     }
 }
 */
/*
 protocol ContainerForData {
     associatedtype T: Numeric
     
     var data: T { get }
     
     func copy() -> Self
 }

 struct Some: ContainerForData {
     let data: Int
     
     func copy() -> Some {
         return Some(data: data)
     }
 }
 */
/*
 protocol ContainerForData {
     associatedtype T: Numeric
     
     var data: T { get }
     
 }

 struct Some: ContainerForData {
     let data: Int
 }
 */

/*
 protocol ContainerForData {
     associatedtype T
     
     var data: T { get }
     
 }

 struct Some: ContainerForData {
     let data: Int
 }
 */

/*
 protocol ContainerForData {
     associatedtype T
     
     var data: T { get }
     
 }

 struct Some: ContainerForData {
     typealias T = Int
     
     let data: Int
 }
 */
