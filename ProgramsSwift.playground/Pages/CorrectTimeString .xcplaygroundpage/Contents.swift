import Foundation
func correctRegularEx(_ str: String) -> Int{
    let pattener = "^[0-9]*:[0-9]*:[0-9]*$"
    let range = NSMakeRange(0, str.count)
    let result = try! NSRegularExpression(pattern: pattener, options: [])
    let results = result.numberOfMatches(in: str, options: [], range: range)
    return results
}
func correct(_ timeString: String?) -> String? {
    if timeString == "" || timeString == nil{ return timeString }
    if correctRegularEx(timeString!) != 1{ return nil }
    var outputStr = ""
    var buffer : Int
    var timeInt = timeString!.split(whereSeparator: {$0 == ":"}).compactMap{ Int($0) }
    if timeInt[2] >= 60{ // Секунды
        buffer = timeInt[2]
        timeInt[2] = buffer % 60
        timeInt[1] = timeInt[1] + buffer / 60
    }
    if timeInt[1] >= 60{ // Минуты
        buffer = timeInt[1]
        timeInt[1] = buffer % 60
        timeInt[0] = timeInt[0] + buffer / 60
    }
    if timeInt[0] >= 24{ // Часы
        timeInt[0] = timeInt[0] % 24
    }
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
correct("59:88:125")
