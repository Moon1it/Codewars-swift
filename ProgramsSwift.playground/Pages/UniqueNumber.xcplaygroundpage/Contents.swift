func findUniq(_ arr: [Int]) -> Int {
    var dict = [Int : Int]()
    for el in arr{
        if dict[el] != nil{
            dict[el]! += 1
        }else{
            dict[el] = 1
        }
    }
    for (key, value) in dict{
        if value == 1{
            return key
        }
    }
    return 0
}

findUniq([ 2, 2, 2, 2, 100, 2, 2, 2, 2])
