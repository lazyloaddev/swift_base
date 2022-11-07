import Foundation

class ExitSubApplication: SubApplication {
    init() {
        super.init(
            command: "q",
            description: "Выйти из приложения",
            wellcomeMessage: "Прощайте!"
        )
    }
    
    override func runAction() -> SubApplicationActionResult {
        exit(0)
    }
}
