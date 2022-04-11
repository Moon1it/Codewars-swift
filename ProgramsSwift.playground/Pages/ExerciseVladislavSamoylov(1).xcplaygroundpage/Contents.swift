typealias shopBagType = [Int : String]
typealias filterType = (String) -> Bool

let firstBag: shopBagType = [1 : "mouse",2 : "apple", 3 : "cheese", 4: "lemon", 5 : "tea", 6 : "phone"]
let secondBag: shopBagType = [1 : "laptop", 2 : "phone", 3: "key", 4 : "lemon", 5 : "mouse"]

func printShopBag(_ bag : shopBagType, filter : filterType)->[String]{
    var duplicateArray : [String] = []
    for (_, value) in bag{
        if filter(String(value)){
            duplicateArray.append(value)
        }
    }
    return duplicateArray
}


func readDict() -> shopBagType{
    print("How many product are there in shopBag?")
    var inputDict = shopBagType()
    let numProducts = Int(readLine()!)
    for num in 0..<numProducts!{
        inputDict[num] = readLine()
    }
    return inputDict
}

let newDict = readDict()

let duplicate = printShopBag(firstBag){
    for (_, value) in secondBag{
        if $0 == value{ return true }
    }
    return false
}

print(duplicate)
