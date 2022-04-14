var newArray = [7, 6, 5, 4, 3, 2, 1]
var newArray1 = [7, 6, 5, 4, 3, 2, 1]
let lowNewArray1 = 0
let highNewArray1 = newArray1.count-1

func Bubble(_ mass: inout [Int]){
    for i in 0..<mass.count-1{
        let index = mass.count - i
        for j in 1..<index{
            if mass[j-1] > mass[j]{
                mass.swapAt(j-1, j)
            }
        }
    }
}

Bubble(&newArray)

func quicksort<T: Comparable>(_ a: [T]) -> [T] {
    guard a.count > 1 else { return a } // Проверка

    let pivot = a[a.count/2]
    let less = a.filter { $0 < pivot }
    print("less = ", less)
    let equal = a.filter { $0 == pivot }
    print("equal = ", equal)
    let greater = a.filter { $0 > pivot }
    print("gearer = ", greater)
    print("________________________")
    return quicksort(less) + equal + quicksort(greater)
}

let list = [-10, 5, 12, 3, -2]
quicksort(list)
