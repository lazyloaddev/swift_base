import Foundation


class ExitSubApplication: SubApplication {
    override var command: String { "q" }
    override var description: String { "Выйдти из приложения" }
    
    override func run() {
        exit(0)
    }
}
