import Foundation

func correctRegularEx(_ str: String) -> Int{
    let pattener = "^[0-9]*:[0-9]*:[0-9]*$"
    let range = NSMakeRange(0, str.count)
    let result = try! NSRegularExpression(pattern: pattener, options: [])
    let results = result.numberOfMatches(in: str, options: [], range: range)
    return results
}

func correct(_ timeString: String?,_ ClosureTime: (Int, Int?) -> (Int, Int?)) -> String? {
    if timeString == "" || timeString == nil{ return timeString } // Проверка на "" и nil
    if correctRegularEx(timeString!) != 1{ return nil } // Поверка по регулярному выражению
    var timeInt = timeString!.split(whereSeparator: {$0 == ":"}).compactMap{ Int($0) }
    var timeResult = ClosureTime(timeInt[2], timeInt[1])
    timeInt[2] = timeResult.0
    timeInt[1] = timeResult.1!
    timeResult = ClosureTime(timeInt[1], timeInt[0])
    timeInt[1] = timeResult.0
    timeInt[0] = timeResult.1!
    timeResult = ClosureTime(timeInt[0], nil)
    timeInt[0] = timeResult.0
    
    var outputStr = ""
    for (i, elem) in timeInt.enumerated(){
        if String(elem).count != 2{
            outputStr += "0" + String(elem)
        }else{
            outputStr += String(elem)
        }
        if i != timeInt.count-1 { outputStr += ":" }
    }
    return outputStr
}
correct("59:88:125"){
    var cur = 0
    if $1 == nil{
        if $0 >= 24{ cur = $0 % 24 }
        return (cur, nil)
    }
    var next = 0
    if $0 >= 60{ // Минуты, секунды
        cur = $0 % 60
        next = $1! + $0 / 60
    }
    return (cur, next)
}
