//let shops : [String : Double] = ["shop1":35000,"shop2":10000,"shop3":12000,"shop4":45000,"shop5":90000,"shop6":53000,"shop7":16000,"shop8":22000]
//
//func filterShop(shop: [String : Double], filter: (Double) -> Bool) -> [String : Double]{
//    var filtered = [String : Double]()
//    for (key, value) in shops{
//        if filter(value){
//            filtered[key] = value
//        }
//    }
//    return filtered
//}
//
//func lowProfit(p: Double) -> Bool{ p < 20000 }
//func highProfit(p: Double) -> Bool{ p < 20000 }
//
//let lowProgitShops = filterShop(shop: shops, filter: lowProfit)
////print(lowProgitShops)
//let highProgitShops = filterShop(shop: shops, filter: highProfit)
////print(highProgitShops)
//
//let lowProgitShopsClosures = filterShop(shop: shops, filter:{ $0 < 20000 })
////print(lowProgitShopsClosures)
//
//
//let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
//
//var reversedNames = names.sorted(by: { $0 > $1 })
//reversedNames
//// reversedNames равен ["Ewa", "Daniella", "Chris", "Barry", "Alex"]
//
//
//
//let massNum = [133, 7324, 332, 421, 655, 2, 53, 865]
//
//func massFilter(_ mass: [Int], _ action: (Int) -> Bool) -> [Int]{
//    var massOutput = [Int]()
//    for element in mass{
//        if action(element){
//            massOutput.append(element)
//        }
//    }
//    return massOutput
//}
//
//massFilter(massNum, { $0 % 2 == 0 })
//print(massFilter(massNum, { $0 % 2 == 0 }))
//
//
let d = [1 : 5, 2: 3, 3: 93, 13 : 1, 25: 2, 311: 3]
let m = [1, 2, 3]

func equalFunc(_ dict : [Int : Int],_ closure : (Int) -> Bool) -> Int{
    var kol = 0
    for (_, value) in dict{
        if closure(value){
            kol += 1
        }
    }
    return kol
}

let result = equalFunc(d, {
    for i in m{
        if $0 == i { return false }
    }
    return true
})
print(result)


// Функция сранивает элементы из словаря
// Замыкание сравнивает число с элементами массива
// Если есть свопадение kol++
// Выводим kol

