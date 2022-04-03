func Score(dict : [Int : Int], troops : String) -> Int{
    let troopsMass = troops.split(whereSeparator: {$0 == " "})
    var sumScore = 0
    for (i, el) in troopsMass.enumerated(){
        sumScore += (dict[i])! * Int(el)!
    }
    return sumScore
}

func evaluate(good: String, vsEvil: String) -> String {
    let goodDict = [0 : 1, 1 : 2, 2 : 3, 3 : 3, 4 : 4, 5 : 10]
    let evilDict = [0 : 1, 1 : 2, 2 : 2, 3 : 2, 4 : 3, 5 : 5, 6 : 10]
    let goodScore = Score(dict: goodDict, troops: good)
    let evilScore = Score(dict: evilDict, troops: vsEvil)
    
    if goodScore > evilScore{
        return "Battle Result: Good triumphs over Evil"
    }else if goodScore < evilScore{
        return "Battle Result: Evil eradicates all trace of Good"
    }else{
        return "Battle Result: No victor on this battle field"
    }
}

evaluate(good: "0 0 0 0 0 10", vsEvil: "0 1 1 1 1 0 0")
