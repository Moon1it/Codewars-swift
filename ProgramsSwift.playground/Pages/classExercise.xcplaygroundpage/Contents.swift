class Car {
    var name: String
    var weight: Float
    var maxSpeed: Int
    var color: String
    var type: String
    
    init(_ nameCar: String,_ weightCar: Float,_ maxSpeedCar: Int,_ colorCar: String,_ typeCar: String){
        self.name = nameCar         // "Nissan Skyline"
        self.weight = weightCar     // 1.7
        self.maxSpeed = maxSpeedCar // 310
        self.color = colorCar       //"Blue"
        self.type = typeCar         //"Coupe"
    }
    func info(){
        print("""
        Car - \(self.name)\n
        weight - \(self.weight)\n
        maxSpeed - \(self.maxSpeed)\n
        color - \(self.color)\n
        type - \(self.type)\n\n
""")
    }
}

var nissanSkyline: Car = Car("Nissan Skyline", 1.7, 310, "Night Blue", "Coupe")
var toyotaMark2: Car = Car("Toyota Mark 2", 2, 240, "Deep White", "Sedan")

nissanSkyline.info()
toyotaMark2.info()
