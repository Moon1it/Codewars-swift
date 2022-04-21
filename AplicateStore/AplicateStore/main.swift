import Foundation

class AppStore{
    static var numApp = 0
    static var listApplications = [String]()
    static func showAllApplications(){
        print("Список приложений")
        for name in AppStore.listApplications{
            print("\t\(name)")
        }
    }
}

class Application: AppStore{
    var nameApp: String
    var reviews: [String : [String : Double]]
    var score: Double{
        var sum = 0.0
        let countOpinion = Double(self.reviews.count)
        for (_, opinion) in self.reviews{
            for (_, score) in opinion{
                sum += score
            }
        }
        return sum / countOpinion
    }
    
    func addReviews(userName: String, review: String, score: Double){
        if score > 5{
            print("Максимальная оценка 5!\nОтзыв не принят.\n")
        }else{
            let opinion = [review: score]
            self.reviews[userName] = opinion
            print("Отзыв принят.\n")
        }
    }
    
    func viewAllReviews(){
        for (name,rev) in self.reviews{
            print(name, "-", rev, "Общая оценка приложения", round(self.score*100)/100)
        }
        print("\n")
    }
    
    init(nameApp: String){
        self.nameApp = nameApp
        self.reviews = [:]
        AppStore.numApp += 1
        AppStore.listApplications.append(self.nameApp)
    }
}

class NumberApplication: Application{
    var functional: (String, Int, Int) -> Void
    init(nameApp: String, closure: @escaping (String, Int, Int) -> Void){
        self.functional = closure
        super.init(nameApp: nameApp)
    }
}

let calc = NumberApplication(nameApp: "calculator"){
    switch $0{
        case "+": print("Ответ \($1) + \($2) = \($1 + $2)\n")
        case "-": print("Ответ \($1) - \($2) = \($1 - $2)\n")
        case "*": print("Ответ \($1) * \($2) = \($1 * $2)\n")
        case "/": print("Ответ \($1) / \($2) = \($1 / $2)\n")
        case "mod": print("Ответ \($1) % \($2) = \($1 % $2)\n")
        default: break
    }
}

func Start(_ app: String){
    switch app{
        case "calculator":
            print("Выберите операцию (+, -, *, /, mod), чтобы увидеть отзывы (?) или написать свой отзыв напишите (!)")
            let operation = readLine()
            switch operation{
                case "!":
                    print("Введите ваше имя и вашу оценку через запятую")
                    let nameScore = readLine()!.components(separatedBy: ",")
                    print("Напишите короткий отзыв")
                    calc.addReviews(userName: nameScore[0], review: readLine()!, score: Double(nameScore[1])!)
                case "?":
                    calc.viewAllReviews()
                default:
                    print("Введите два операнда через запятую")
                    let operands = readLine()!.components(separatedBy: ",")
                    calc.functional(operation!, Int(operands[0])!, Int(operands[1])!)
            }
    case "tv-view":
        print("Приложение находится в разработке\n")
    default:
        break
    }
}

var select = ""
repeat{
    AppStore.showAllApplications()
    print("Выберите приложение (для выхода выберите 0)")
    select = readLine()!
    if select != "0"{
        Start(select)
    }else{
        break
    }
    print("1 - продолжить, 0 - выход")
    if readLine()! != "1"{ break }
}while true
