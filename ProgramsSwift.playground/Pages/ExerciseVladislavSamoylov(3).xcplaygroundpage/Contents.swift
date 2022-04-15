//// dict, tuple
//import Foundation
//var namesDict = ["GIvanov" : "Police officer", "APetrov" : "ARegistered nurse", "MSurcov" : "Psychologist", "BNikolayev" : "Paramedic", "D" : "defwf", "F" : "sdvsdv"]
//
//for leter in "abcdefghijklmnopqrstuvwxyz"{
//    for (key, value) in namesDict{
//        if key[key.startIndex].lowercased() == String(leter){
//            print(key, value)
//        }
//    }
//}
//print()
//print("***")
//print()
//var firstViolators = (speeding: 10, drunkDriving: 5, disenfranchised: 2)
//var secondViolators = (speeding: 6, drunkDriving: 4, disenfranchised: 15)
//var differenceViolators = (firstViolators.0 - secondViolators.0, firstViolators.1 - secondViolators.1, firstViolators.2 - secondViolators.2)
//print(firstViolators, secondViolators, differenceViolators)
//print()
//print("***")
//print()
//let devInfo1 = (name: "Артем", age: 43, experience: 4, specialization: "devOps")
//let devInfo2 = (name: "Яна", age: 25, experience: 3, specialization: "ios")
//let devInfo3 = (name: "Валерия", age: 33, experience: 8, specialization: "web")
//let devInfo4 = (name: "Вадим", age: 19, experience: 1, specialization: "")
//let devInfo5 = (name: "Платон", age: 19, experience: 3, specialization: "python")
//let devInfo6 = (name: "Маргарита", age: 23, experience: 0, specialization: "")
//let devInfo7 = (name: "Анна", age: 25, experience: 1, specialization: "ios")
//let devInfo8 = (name: "Матвей", age: 17, experience: 2, specialization: "")
//let devInfo9 = (name: "Петр", age: 50, experience: 13, specialization: "С++")
//let devInfo10 = (name: "Ева", age: 22, experience: 1, specialization: "")
//
//let devInfoArray = [devInfo1, devInfo2, devInfo3, devInfo4, devInfo5, devInfo6, devInfo7, devInfo8, devInfo9, devInfo10]
//var youngDev = [(String, Int, Int, String)]()
//var notIosDev = [(String, Int, Int, String)]()
//
//for elem in devInfoArray{
//    if elem.age > 23 && elem.experience > 0 && elem.specialization == "ios"{
//        print("Принят на работу ", elem.name)
//    }
//    if elem.age < 23{
//        youngDev.append(elem)
//    }
//    if elem.specialization != "ios"{
//        notIosDev.append(elem)
//    }
//}
//
//let maxAge = youngDev.max(by: {$0.1 < $1.1})!.1
//for i in 0..<youngDev.count{
//
//    if youngDev[i].1 == maxAge{
//        youngDev.remove(at: i)
//    }
//}
//print()
//print("youngDev", youngDev)
//print()
//print("notIosDev", notIosDev)

//print("***")
//print()

//outer: for i in 0..<200{
//    for j in 0..<200{
//        if j == 15{ break outer} //Выход из внешнего цикла
//        print("i, j", i, j )
//    }
//}

//print("***")
//print()

//typealias arrayString = [String]
//
//var array1 = ["1","2","5"]
//var array2 = ["6","2","1"]
//var array3 = ["7","9","4"]
//
//func sumStringToInt(_ ar1: arrayString,_ ar2: arrayString,_ ar3: arrayString){
//    let uniteArrayString = ar1 + ar2 + ar3
//    var sum = 0
//    for num in uniteArrayString{
//        sum += Int(num)!
//    }
//    print(sum)
//}
//
//sumStringToInt(array1, array2, array3)

//print("***")
//print()

var story = "витя потерял завтрак На большой перемене все ребята завтракали а витя стоял в сторонке Почему ты не ешь спросил его коля Завтрак потерял Плохо сказал коля откусывая большой кусок белого хлеба До обеда далеко ещё А ты где его потерял спросил миша Не знаю тихо сказал витя и отвернулся Ты наверное в кармане нёс а надо в сумку класть сказал миша А володя ничего не спросил Он подошёл к вите разломил пополам кусок хлеба с маслом и протянул товарищу Бери ешь"

func punctuationMarks(_ text: inout String){
    var arrayString = Array(text)
    var index = 0
    while index < arrayString.count{
        if arrayString[index].isLetter && String(arrayString[index]) == String(arrayString[index]).uppercased(){
            arrayString.insert("\n", at: index-1)
            index += 1
        }
        index += 1
    }
    text = String(arrayString)
    print(text)
}
punctuationMarks(&story)

//print("***")
//print()
