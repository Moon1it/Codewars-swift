func accum(_ s: String) -> String {
    var outputStr = ""
    for (i, elem) in s.enumerated(){
        outputStr += elem.uppercased()
        for _ in 0..<i{
            outputStr += elem.lowercased()
        }
        if elem != s.last { outputStr += "-" }
    }
    return outputStr
}
accum("cwAt")
accum("RqaEzty")
accum("abcd")
