import Darwin

class Shape {

    let name: String
    let color: String
    let x: Int
    let y: Int
    
    
    init(name: String, color: String, x: Int, y: Int) {
        self.name = name
        self.color = color
        self.x = x
        self.y = y
    }
    
    func paint() -> String {
        let shapeDetails = makeShapeDetails()
        let area = makeArea()
        return """
        Название: \(name)
        Площадь: \(area)
        Цвет: \(color)
        Координаты:
            x: \(x)
            y: \(y)
        Особые свойства:
        \(shapeDetails)
        """
    }
    
    func makeShapeDetails() -> String {
        "Неизвестно"
    }
    
    func makeArea() -> String {
        "Неизвестно"
    }
    
}

class Circle: Shape {
    
    let radius: Double
    
    init(name: String, color: String, x: Int, y: Int, radius: Double) {
        self.radius = radius
        super.init(name: name, color: color, x: x, y: y)
    }
    
    override func makeShapeDetails() -> String {
        """
            радиус: \(radius)
        """
    }
    
    override func makeArea() -> String {
        let area = Double.pi * radius * radius
        return String(area)
    }
    
}

class Triangle: Shape {
    
    let sideA: Double
    let sideB: Double
    let sideC: Double
    
    
    init(name: String, color: String, x: Int, y: Int, sideA: Double, sideB: Double, sideC: Double) {
        self.sideA = sideA
        self.sideB = sideB
        self.sideC = sideC
        super.init(name: name, color: color, x: x, y: y)
    }
    
    override func makeShapeDetails() -> String {
        """
            сторона а: \(sideA)
            сторона b: \(sideB)
            сторона c: \(sideC)
        """
    }
    
    override func makeArea() -> String {
        let p = (sideA + sideB + sideC) / 2
        let area = sqrt(p * (p - sideA) * (p - sideB) * (p - sideC))
        return String(area)
    }
    
}

class Square: Shape {
    
    let sideA: Double
    let sideB: Double
    
    init(name: String, color: String, x: Int, y: Int, sideA: Double, sideB: Double) {
        self.sideA = sideA
        self.sideB = sideB
        super.init(name: name, color: color, x: x, y: y)
    }
    
    override func makeShapeDetails() -> String {
        """
            сторона а: \(sideA)
            сторона b: \(sideB)
        """
    }
    
    override func makeArea() -> String {
        let area = sideA * sideB
        return String(area)
    }
    
}

@main
struct Application {
    static func main() throws {
        let shapes = [
            Circle(name: "Круг", color: "Красный", x: 0, y: 0, radius: 35),
            Square(name: "Квадрат", color: "Синий", x: 100, y: 50, sideA: 4, sideB: 27),
            Triangle(name: "Треугольник", color: "Зеленый", x: 70, y: 90, sideA: 12, sideB: 6, sideC: 9),
        ]
        
        for shape in shapes {
            print(shape.paint())
            print("-----------")
        }
    }
}


/*
 class Shape {

     let name: String
     let color: String
     let x: Int
     let y: Int
     
     
     init(name: String, color: String, x: Int, y: Int) {
         self.name = name
         self.color = color
         self.x = x
         self.y = y
     }
     
     func paint() -> String {
         let shapeDetails = makeShapeDetails()
         let area = makeArea()
         return """
         Название: \(name)
         Площадь: \(area)
         Цвет: \(color)
         Координаты:
             x: \(x)
             y: \(y)
         Особые свойства:
         \(shapeDetails)
         """
     }
     
     func makeShapeDetails() -> String {
         "Неизвестно"
     }
     
     func makeArea() -> String {
         "Неизвестно"
     }
     
 }
 func paint() -> String {
     let shapeDetails = makeShapeDetails()
     let area = makeArea()
     return """
     Название: \(name)
     Площадь: \(area)
     Цвет: \(color)
     Координаты:
         x: \(x)
         y: \(y)
     Особые свойства:
     \(shapeDetails)
     """
 }

 func makeShapeDetails() -> String {
     switch name {
     case "Круг":
         return makeShapeDetailsForCircle()
     case "Квадрат":
         return makeShapeDetailsForSquare()
     case "Треугольник":
         return makeShapeDetailsForTriangle()
     default:
         return "Неизвестно"
     }
 }

 func makeArea() -> String {
     let area: Double?
     switch name {
     case "Круг":
         area = makeAreaForCircle()
     case "Квадрат":
         area = makeAreaForSquare()
     case "Треугольник":
         area = makeAreaForTriangle()
     default:
         area = nil
     }
     
     if let area = area {
         return String(area)
     } else {
         return "Неизвестно"
     }
 }
 func paint() -> String {
     let shapeDetails: String
     switch name {
     case "Круг":
         shapeDetails = makeShapeDetailsForCircle()
     case "Квадрат":
         shapeDetails = makeShapeDetailsForSquare()
     case "Треугольник":
         shapeDetails = makeShapeDetailsForTriangle()
     default:
         shapeDetails = "Неизвестно"
     }
     
     let area: String
     switch name {
     case "Круг":
         area = String(makeAreaForCircle())
     case "Квадрат":
         area = String(makeAreaForSquare())
     case "Треугольник":
         area = String(makeAreaForTriangle())
     default:
         area = "Неизвестно"
     }
     return """
     Название: \(name)
     Площадь: \(area)
     Цвет: \(color)
     Координаты:
         x: \(x)
         y: \(y)
     Особые свойства:
     \(shapeDetails)
     """
 }
 func makeAreaForSquare() -> Double {
     sideA * sideB
 }

 func makeAreaForTriangle() -> Double {
     let p = (sideA + sideB + sideC) / 2
     return sqrt(p * (p - sideA) * (p - sideB) * (p - sideC))
 }

 func makeAreaForCircle() -> Double {
     Double.pi * radius * radius
 }
 func paint() -> String {
     let shapeDetails: String
     switch name {
     case "Круг":
         shapeDetails = makeShapeDetailsForCircle()
     case "Квадрат":
         shapeDetails = makeShapeDetailsForSquare()
     case "Треугольник":
         shapeDetails = makeShapeDetailsForTriangle()
     default:
         shapeDetails = "Неизвестно"
     }
     return """
     Название: \(name)
     Площадь: Неизвестно
     Цвет: \(color)
     Координаты:
         x: \(x)
         y: \(y)
     Особые свойства:
     \(shapeDetails)
     """
 }

 func makeShapeDetailsForSquare() -> String {
     """
         сторона а: \(sideA)
         сторона b: \(sideB)
     """
 }

 func makeShapeDetailsForTriangle() -> String {
     """
         сторона а: \(sideA)
         сторона b: \(sideB)
         сторона c: \(sideC)
     """
 }

 func makeShapeDetailsForCircle() -> String {
     """
         радиус: \(radius)
     """
 }
 func paint() -> String {
     let shapeDetails: String
     switch name {
     case "Круг":
         shapeDetails = """
             радиус: \(radius)
         """
     case "Квадрат":
         shapeDetails = """
             сторона а: \(sideA)
             сторона b: \(sideB)
         """
     case "Треугольник":
         shapeDetails = """
             сторона а: \(sideA)
             сторона b: \(sideB)
             сторона c: \(sideC)
         """
     default:
         shapeDetails = "Неизвестно"
     }
     return """
     Название: \(name)
     Площадь: Неизвестно
     Цвет: \(color)
     Координаты:
         x: \(x)
         y: \(y)
     Особые свойства:
     \(shapeDetails)
     """
 }
 let shapes = [
     Shape(name: "Круг", color: "Красный", x: 0, y: 0, sideA: 0, sideB: 0, sideC: 0, radius: 35),
     Shape(name: "Квадрат", color: "Синий", x: 100, y: 50, sideA: 4, sideB: 27, sideC: 0, radius: 0),
     Shape(name: "Треугольник", color: "Зеленый", x: 70, y: 90, sideA: 12, sideB: 6, sideC: 9, radius: 0),
 ]
 class Shape {

     let name: String
     let color: String
     let x: Int
     let y: Int
     let sideA: Double
     let sideB: Double
     let sideC: Double
     let radius: Double
     
     init(
         name: String,
         color: String,
         x: Int,
         y: Int,
         sideA: Double,
         sideB: Double,
         sideC: Double,
         radius: Double
     ) {
         self.name = name
         self.color = color
         self.x = x
         self.y = y
         self.sideA = sideA
         self.sideB = sideB
         self.sideC = sideC
         self.radius = radius
     }
     
     func paint() -> String {
         """
         Название: \(name)
         Площадь: Неизвестно
         Цвет: \(color)
         Координаты:
             x: \(x)
             y: \(y)
         """
     }
     
 }
 for shape in shapes {
     print(shape.paint())
     print("-----------")
 }
 func paint() -> String {
     """
     Название: \(name)
     Площадь: Неизвестно
     Цвет: \(color)
     Координаты:
         x: \(x)
         y: \(y)
     """
 }
 let shapes = [
     Shape(name: "Круг", color: "Красный", x: 0, y: 0),
     Shape(name: "Квадрат", color: "Синий", x: 100, y: 50),
     Shape(name: "Треугольник", color: "Зеленый", x: 70, y: 90),
 ]

 for shape in shapes {
     print(shape)
 }
 class Shape {

     let name: String
     let color: String
     let x: Int
     let y: Int
     
     
     init(name: String, color: String, x: Int, y: Int) {
         self.name = name
         self.color = color
         self.x = x
         self.y = y
     }
     
 }
 */
