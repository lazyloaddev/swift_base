import Darwin

class Application {
    
    private let subApplications = [
        CalculatorSubApplication(),
        TicTackToeSubApplication(),
        ExitSubApplication(),
    ]
    
    func run() {
        print("Добро пожаловать в программу калькулятор.")
        while true {
            let action = getAction()
            for application in subApplications {
                if application.command == action {
                    application.run()
                    break
                }
            }
            print("\n---------------------------------------------------------\n")
        }
    }
    
    private func getAction() -> String {
        var description = "Что вы хотите сделать:"
        for application in subApplications {
            description += "\n\t\(application.command) - \(application.description)"
        }
        return UserDataProvider.string(description)
    }
    
}

