//import Foundation
//typealias closure = (String) -> Bool
//
//func arrayFilter(_ mass: inout [String], _ filter: closure){
//    for (index, element) in mass.enumerated(){
//        if filter(element){
//            mass[index] = "can`t"
//        }
//    }
//}
//func arrayFilter(_ dict: inout [String : String], _ filter: closure){
//    for (key, value) in dict{
//        if filter(value){
//            dict[key] = "can`t"
//        }
//    }
//}
//
//var firstArrayString = ["You", "can" ,"can", "also", "change", "the", "debug", "console"]
//var firstDictString = ["first": "You", "second": "can" ,"thred": "can", "fourth": "the", "fifth": "console"]
//
//arrayFilter(&firstArrayString, {$0 == "can"})
//arrayFilter(&firstDictString, {$0 == "can"})
//

//let arr1: [Double] = [45.1, 31.6, 56.5, 90.4, 93.8, 53.3].sorted(by: { $0 < $1 })
//print(arr1)
//let arr1MinValue = arr1[0]
//let arr1MaxValue = arr1[arr1.endIndex-1]
