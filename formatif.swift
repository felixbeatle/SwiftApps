import Foundation

class granpa {
    var name: String
    var lastName: String
    var money: Int
    
    func sayHello() {
        print("Hello, I am granpa")
    }
    
    func printvariable() {
        print("name: \(name)")
        print("lastName: \(lastName)")
        print("money: \(money)")
    }
    
    init(name: String, lastName: String, money: Int) {
        self.name = name
        self.lastName = lastName
        self.money = money
    }
}

class dad: granpa {
    var carname: String
    var houseid: Int
    
    override func sayHello() {
        print("Hello, I am dad")
    }
    
    override func printvariable() {
        super.printvariable()
        print("carname: \(carname)")
        print("houseid: \(houseid)")
    }
    
    init(name: String, lastName: String, money: Int, carname: String, houseid: Int) {
        self.carname = carname
        self.houseid = houseid
        super.init(name: name, lastName: lastName, money: money)
    }
}

class uncle: granpa {
    var segniority: String
    var propretyid: Int
    
    override func sayHello() {
        print("Hello, I am uncle")
    }
    
    override func printvariable() {
        super.printvariable()
        print("segniority: \(segniority)")
        print("propretyid: \(propretyid)")
    }
    
    init(name: String, lastName: String, money: Int, segniority: String, propretyid: Int) {
        self.segniority = segniority
        self.propretyid = propretyid
        super.init(name: name, lastName: lastName, money: money)
    }
}

class felix: dad {
    var degree: String
    var life: Bool
    
    override func sayHello() {
        print("Hello, I am felix")
    }
    
    override func printvariable() {
        super.printvariable()
        print("degree: \(degree)")
        print("life: \(life)")
    }
    
    init(name: String, lastName: String, money: Int, carname: String, houseid: Int, degree: String, life: Bool) {
        self.degree = degree
        self.life = life
        super.init(name: name, lastName: lastName, money: money, carname: carname, houseid: houseid)
    }
}

class david: uncle {
    var brokerid: Int
    
    override func sayHello() {
        print("Hello, I am david")
    }
    
    override func printvariable() {
        super.printvariable()
        print("brokerid: \(brokerid)")
    }
    
    init(name: String, lastName: String, money: Int, segniority: String, propretyid: Int, brokerid: Int) {
        self.brokerid = brokerid
        super.init(name: name, lastName: lastName, money: money, segniority: segniority, propretyid: propretyid)
    }
}

class dara: uncle {

    override func sayHello() {
        print("Hello, I am dara")
    }
    
    
   
}

let granpaObj = granpa(name: "Granpa", lastName: "Granpa", money: 1000000)
let dadObj = dad(name: "Dad", lastName: "Dad", money: 1000000, carname: "Car", houseid: 1)
let uncleObj = uncle(name: "Uncle", lastName: "Uncle", money: 1000000, segniority: "Senior", propretyid: 1)
let felixObj = felix(name: "Felix", lastName: "Felix", money: 1000000, carname: "Car", houseid: 1, degree: "Degree", life: true)
let davidObj = david(name: "David", lastName: "David", money: 1000000, segniority: "Senior", propretyid: 1, brokerid: 1)
let daraObj = dara(name: "Dara", lastName: "Dara", money: 1000000, segniority: "Senior", propretyid: 1)

granpaObj.sayHello()
granpaObj.printvariable()

dadObj.sayHello()
dadObj.printvariable()

uncleObj.sayHello()
uncleObj.printvariable()

felixObj.sayHello()
felixObj.printvariable()

davidObj.sayHello()
davidObj.printvariable()

daraObj.sayHello()
daraObj.printvariable()
