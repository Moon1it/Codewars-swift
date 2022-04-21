//struct buyList{
//    var lemon: [String : Bool] = ["lemon": false]
//    var bread: [String : Bool] = ["bread": false]
//    var juice: [String : Bool] = ["juice": false]
//
//    func buyEverything(){
//        if lemon["lemon"]! && bread["bread"]! && juice["juice"]!{
//            print("Все продукты в корзине!")
//        }else{
//            print("Нет некоторых продуктов")
//        }
//    }
//    mutating func newShelf(_ array: [String]){
//        for (index, value) in array.enumerated(){
//            if value == "lemon" && self.lemon["lemon"] == false{
//                self.lemon["lemon"] = true
//            }
//            if value == "bread" && self.bread["bread"] == false{
//                self.bread["bread"] = true
//            }
//            if value == "juice" && self.juice["juice"] == false{
//                self.juice["juice"] = true
//            }
//        }
//    }
//}
//
//var shelf = ["lemon", "laptop", "juice", "bread", "juice", "icecreem"]
//
//var buyList1 = buyList()
//buyList1.buyEverything()
//buyList1.newShelf(shelf)
//buyList1.buyEverything()

import Darwin

//class Calculator{
//    func plus(oper1: Double, oper2: Double) -> Double{
//        return oper1 + oper2
//    }
//    func minus(oper1: Double, oper2: Double) -> Double{
//        return oper1 - oper2
//    }
//    func multip(oper1: Double, oper2: Double) -> Double{
//        return oper1 * oper2
//    }
//    func division(oper1: Double, oper2: Double) -> Double{
//        return oper1 / oper2
//    }
//    func remDev(oper1: Double, oper2: Double) -> Double{
//        return oper1.truncatingRemainder(dividingBy: oper2)
//    }
//}
//
//var myCalculator = Calculator()
//myCalculator.plus(oper1: 5, oper2: 5)
//myCalculator.remDev(oper1: 14, oper2: 3)


class AppStore{
    static var numApp = 0
    static var dictApplications = [String : Double]()
    func showApplications(){
        for (name, review) in AppStore.dictApplications{
            print("Приложение -", name, "Общая оценка -", review)
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
    
    init(nameApp: String){
        self.nameApp = nameApp
        self.reviews = [:]
        AppStore.numApp += 1
        //AppStore.listApplications.append(self)
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
}
class NumberApplication: Application{
    var functional: (Int, Int) -> Int
    init(nameApp: String, closure: @escaping (Int, Int) -> Int){
        self.functional = closure
        super.init(nameApp: nameApp)
    }
}

var calcPlus = NumberApplication(nameApp: "CalculatorPlus"){ $0 + $1 }
calcPlus.functional(5,2)
var calcMinus = NumberApplication(nameApp: "CalculatorMinus"){ $0 - $1 }
calcMinus.functional(5,2)
var calcMul = NumberApplication(nameApp: "CalculatorMul"){ $0 * $1 }
calcMul.functional(5,2)
var calcDev = NumberApplication(nameApp: "CalculatorDev"){ $0 / $1 }
calcDev.functional(5,2)

calcDev.functional(10,2)

calcPlus.addReviews(userName: "Garry", review: "Good app! :)", score: 4.4)
calcPlus.addReviews(userName: "Linda", review: "Hmm, good job.", score: 4.8)
calcPlus.addReviews(userName: "Michel", review: "Hmm, good job.", score: 4.1)
calcPlus.viewAllReviews()
calcPlus.score

print("App Store")
AppStore.numApp
