//enum color: String{
//    case red = "Красный"
//    case green = "Зеленый"
//    case blue = "Голубой"
//    case yellow = "Желтый"
//}
//
//func colorDevice(_ device: String){
//    switch device {
//    case "Macbook":
//        print("\(device) - \(color.red.rawValue)")
//    case "Ipad":
//        print("\(device) - \(color.green.rawValue)")
//    case "Iphone":
//        print("\(device) - \(color.blue.rawValue)")
//    case "Watch":
//        print("\(device) - \(color.yellow.rawValue)")
//    default:
//        break
//    }
//}
//
//colorDevice("Watch")
//

//class House{
//    var width: Float
//    var height: Float
//    var build: Float {
//            return self.width*self.height
//    }
//
//    func getWidth(){
//        print("Width = \(self.width)")
//    }
//
//    func getHeight(){
//        print("Height = \(self.height)")
//    }
//
//    init(_ width: Float,_ height: Float){
//        self.width = width
//        self.height = height
//    }
//}
//
//var myHouse = House(30.5, 6.35)
//
//print(myHouse.build)
//myHouse.getWidth()
//myHouse.getHeight()

//class educatInstitution{
//    var fioStudents: [Int : String]
//    var numStudent: Int = 0
//
//    func howManyStudents(){
//        print("В школе учатся \(numStudent) учеников")
//    }
//
//    func studentsWithName(_ nameStud: String){
//        for (key, value) in self.fioStudents{
//            if nameStud == value{
//                print("\(value), номер студента \(key)")
//            }
//        }
//    }
//    init(){
//        self.fioStudents = [:]
//        self.numStudent
//    }
//}
//
//class School: educatInstitution{
//    static var maxNum = 1500
//    override var numStudent: Int {
//        didSet{
//            if numStudent >= School.maxNum{
//                self.numStudent = oldValue
//            }
//        }
//    }
//
//    func addStudent(_ fioStudent: String){
//        let oldV = self.numStudent
//        self.numStudent += 1
//        if oldV != self.numStudent{
//            self.fioStudents[numStudent] = fioStudent
//            print("Новый ученик: \(fioStudent), номер ученика \(school12.numStudent)")
//        }else{
//            print("К сожалению, зачислить ученика невозможно.\nВ школе нет мест.")
//        }
//    }
//
//    init(currStudents: Int){
//        super.init()
//        self.numStudent = currStudents
//    }
//}
//
//var school12 = School(currStudents: 1496)
//
//school12.addStudent("Kirill")
//school12.addStudent("Ivan")
//school12.addStudent("Iurii")
//
//school12.howManyStudents()
//school12.studentsWithName("Kirill")
//school12.studentsWithName("Iurii")
//
//class Human{
//    var name: String
//    var age: Int
//
//    init(name: String, age: Int){
//        self.name = name
//        self.age = age
//    }
//}
//
//class Student: Human{
//    var university: String
//    var course: Int{
//        didSet{
//            if self.course > 4{
//                self.course = 0
//                print("Вы уже закончили университет!")
//            }
//        }
//    }
//
//    init(university: String, course: Int, name: String, age: Int) {
//        self.university = university
//        if course > 4{
//            self.course = 0
//            print("Вы уже закончили университет!")
//        }else{
//            self.course = course
//        }
//        super.init(name: name, age: age)
//    }
//}
//
//var newStudent = Student(university: "NSTU", course: 4, name: "Kirill", age: 22)
//newStudent.name
//newStudent.age
//newStudent.university
//newStudent.course = 30
//newStudent.course = 40
