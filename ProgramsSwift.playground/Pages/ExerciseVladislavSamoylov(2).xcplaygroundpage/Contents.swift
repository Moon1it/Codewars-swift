//enum
let USA = "USA"
let Australia = "Australia"
let NewZeland = "NewZeland"
let Mexico = "Mexico"
let Turkey = "Turkey"
let Thailand = "Thailand"
let TheUK = "TheUnitedKingdom"
let Poland = "Poland"
let Gremany = "Gremany"
let Brazil = "Brazil"
let AaA = "AaA"
let AAA = "AAAAAAAAA"

let firstArrayCountries : [String] = [AAA, USA, Australia, NewZeland, Mexico, Turkey, Thailand, TheUK, Poland, Gremany, Brazil, AaA]

func filterCountries(_ firstCountries : [String], filter : (String)->Int) ->[String]{
    var outputArray = [String]()
    
    for value in firstCountries{
        switch filter(value){
            case 1:
                outputArray.append(value)
            case 2:
                let NewString = String(value.map {
                    $0 == "A" ? "Y" : $0
                })
                outputArray.append(NewString)
            default:
                break
        }
    }
    return outputArray
}
let finalArrayCountries = filterCountries(firstArrayCountries){
    if $0.count > 5{
        if $0.contains("A"){
            return 2
        }else{
            return 1
        }
    }
    return 0
}

print(finalArrayCountries)
