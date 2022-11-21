
extension Array {
    
    func saveElement(_ index: Index) -> Element? {
        guard index < count else { return nil }
        
        return self[index]
    }
    
}

@main
struct Application {
    static func main() throws {
        let a = ["Иван", "Петр", "Кузьма"]
        print(a.saveElement(4))
    }
    
}


/*
 struct A {
     let a: Int
 }


 extension A {
     
     func printInfo() {
         print(a)
     }
     
 }
 */
