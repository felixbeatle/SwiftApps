class Person {
    let FirstName: String
    let LastName: String
    let DepartementCode: Int
    
    init(FirstName: String, LastName: String, DepartementCode: Int) {
        self.FirstName = FirstName
        self.LastName = LastName
        self.DepartementCode = DepartementCode
    }
    
    func toString() {
        print("FirstName: \(FirstName)")
        print("LastName: \(LastName)")
        print("DepartementCode: \(DepartementCode)")
    }
   
   
    func toString(customMessage: String){
        print(customMessage)
        print("FirstName: \(FirstName)")
        print("LastName: \(LastName)")
        print("DepartementCode: \(DepartementCode)")
    }
}

class Student: Person {
    let StudentId: String
    let CohortNumber:String
    let balance :   Double
   let  SemesterId : String

    init(StudentId: String, CohortNumber: String, balance: Double, SemesterId: String) {
        self.StudentId = StudentId
        self.CohortNumber = CohortNumber
        self.balance = balance
        self.SemesterId = SemesterId
        super.init(FirstName: "", LastName: "", DepartementCode: 0)


    }
    
    override func toString() {
        super.toString()
        print("StudentId: \(StudentId)")
        print("CohortNumber: \(CohortNumber)")
        print("balance: \(balance)")
        print("SemesterId: \(SemesterId)")
    }
    override func toString(customMessage: String){
        print(customMessage)
        print("StudentId: \(StudentId)")
        print("CohortNumber: \(CohortNumber)")
        print("balance: \(balance)")
        print("SemesterId: \(SemesterId)")
    }
    func getStudentId() -> String {
        return StudentId
    }
    func getCohortNumber() -> String {
        return CohortNumber
    }
    func getbalance() -> Double {
        return balance
    }
    func getSemesterId() -> String {
        return SemesterId
    }



    
   
}

class teacher : Person{
   let teacherId : String
    let YearsofExperience : Int
    let teachingHours : Double

    init(teacherId: String, YearsofExperience: Int, teachingHours: Double) {
        self.teacherId = teacherId
        self.YearsofExperience = YearsofExperience
        self.teachingHours = teachingHours
        super.init(FirstName: "", LastName: "", DepartementCode: 0)
    }

    override func toString() {
        super.toString()
        print("teacherId: \(teacherId)")
        print("YearsofExperience: \(YearsofExperience)")
        print("teachingHours: \(teachingHours)")
    }
    override func toString(customMessage: String){
        print(customMessage)
        print("teacherId: \(teacherId)")
        print("YearsofExperience: \(YearsofExperience)")
        print("teachingHours: \(teachingHours)")
    }
    func getid() -> String {
        return teacherId
    }
    func getYearsofExperience() -> Int {
        return YearsofExperience
    }
    func getteachingHours() -> Double {
        return teachingHours
    }

}

let person1 = Person(FirstName: "John", LastName: "Doe", DepartementCode: 1)
 person1.toString()
 person1.toString(customMessage: "This is a custom message")

let student1 = Student(StudentId: "S001", CohortNumber: "C001", balance: 1000.0, SemesterId: "F001")
student1.toString()
student1.toString(customMessage: "This is a custom message")

let teacher1 = teacher(teacherId: "T001", YearsofExperience: 10, teachingHours: 100.0)
teacher1.toString()
teacher1.toString(customMessage: "This is a custom message")


