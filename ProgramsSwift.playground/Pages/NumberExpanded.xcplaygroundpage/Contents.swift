func expandedForm(_ num: Int) -> String {
    let numStr = String(num)
    var outputStr = ""
    var mul : Int = 1
    for (i, el) in numStr.enumerated() where Int(String(el)) != 0{
        mul = 1
        for _ in 0..<Int(numStr.count)-i-1{
            mul *= 10
        }
        mul *= Int(String(el))!
        outputStr += " \(mul) +"
    }
    outputStr = String(outputStr.dropFirst(1))
    outputStr = String(outputStr.dropLast(2))
    return outputStr
}
expandedForm(14204)
