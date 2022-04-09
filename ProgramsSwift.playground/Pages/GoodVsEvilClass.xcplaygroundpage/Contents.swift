class Army{
    var nameArmy: String = ""
    var battleField: String = ""
    var nameForces: [Int : Int]{
        switch self.nameArmy{
            case "good": return [0 : 1, 1 : 2, 2 : 3, 3 : 3, 4 : 4, 5 : 10]
            case "evil": return [0 : 1, 1 : 2, 2 : 2, 3 : 2, 4 : 3, 5 : 5, 6 : 10]
            default: return [0:0]
        }
    }
    var scoreArmy : Int{
        var sumScore = 0
        for (i, el) in self.battleField.split(whereSeparator: {$0 == " "}).enumerated(){
            sumScore += (self.nameForces[i])! * Int(el)!
        }
        return sumScore
    }
    init(_ battleInfo: [String : String]){
        var name: String = ""
        if let val = battleInfo["good"]{
            name = "good"
            self.battleField = val
        }else if let val = battleInfo["evil"]{
            name = "evil"
            self.battleField = val
        }
        self.nameArmy = name
    }
}
var Good : Army = Army(["good" : "0 0 0 0 0 10"])
var Evil : Army = Army(["evil": "0 1 1 1 1 0 0"])

switch Good.scoreArmy - Evil.scoreArmy{
case 1...:
    print("Battle Result: Good triumphs over Evil")
case ..<0:
    print("Battle Result: Evil eradicates all trace of Good")
default:
    print("Battle Result: No victor on this battle field")
}
