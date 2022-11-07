enum SubApplicationActionResult {
    case resume
    case exit
}

class SubApplication {
    let command: String
    let description: String
    let wellcomeMessage: String
    
    init(
        command: String,
        description: String,
        wellcomeMessage: String
    ) {
        self.command = command
        self.description = description
        self.wellcomeMessage = wellcomeMessage
    }
    
    func run() {
        print(wellcomeMessage)
        
        while true {
            let result = runAction()
            if result == .exit {
                return
            }
            print("")
            print("---------------------------------------------------------")
            print("")
        }
    }
    
    func runAction() -> SubApplicationActionResult {
        return .resume
    }
}
