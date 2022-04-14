// Filter array, closures
let firstArrayCountries = ["USA", "Australia", "Australia", "NewZeland", "Mexico", "Turkey", "Thailand", "TheUnitedKingdom", "Poland", "Gremany", "BrazilA", "AaA", "AAAAAAAAA"]

func filterCountries(_ firstCountries: [String], filter: (String)->Bool)->[String]{
    var outputArray = [String]()
    for value in firstCountries{
        if filter(value){
            let NewString = String(value.map { $0 == "A" ? "Y" : $0 })
            outputArray.append(NewString)
        }
    }
    return outputArray
}
let finalArrayCountries = filterCountries(firstArrayCountries){
    return $0.count > 5 || ($0.count > 5 && $0.contains("A")) ? true : false
}
