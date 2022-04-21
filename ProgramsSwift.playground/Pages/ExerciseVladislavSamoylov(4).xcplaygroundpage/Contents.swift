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

//var story = "витя потерял завтрак На большой перемене все ребята завтракали а витя стоял в сторонке Почему ты не ешь спросил его коля Завтрак потерял Плохо сказал коля откусывая большой кусок белого хлеба До обеда далеко ещё А ты где его потерял спросил миша Не знаю тихо сказал витя и отвернулся Ты наверное в кармане нёс а надо в сумку класть сказал миша А володя ничего не спросил Он подошёл к вите разломил пополам кусок хлеба с маслом и протянул товарищу Бери ешь"
//
//func punctuationMarks(_ text: inout String){
//    var arrayString = Array(text)
//    var index = 0
//    while index < arrayString.count{
//        if arrayString[index].isLetter && String(arrayString[index]) == String(arrayString[index]).uppercased(){
//            arrayString.insert("\n", at: index-1)
//            index += 1
//        }
//        index += 1
//    }
//    text = String(arrayString)
//    print(text)
//}
//punctuationMarks(&story)
//
//("***")
//print()
