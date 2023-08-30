class Person {
    private let maxNameLength = 50

    internal var FirstName: String
    internal var lastName: String
    internal var departmentCode: Int

    init(FirstName: String, lastName: String, departmentCode: Int) {
        self.FirstName = FirstName
        self.lastName = lastName
        self.departmentCode = departmentCode
    }

    internal func toString() {
        print("FirstName: \(FirstName)")
        print("LastName: \(lastName)")
        print("DepartmentCode: \(departmentCode)")
    }
}

class Patient: Person {
    private let maxIdLength = 10

    public var patientId: String
    public var sectionNumber: String
    public var balance: Double
    public var dischargeStatus: String

    init(patientId: String, sectionNumber: String, balance: Double, dischargeStatus: String, FirstName: String, lastName: String, departmentCode: Int) {
        self.patientId = patientId
        self.sectionNumber = sectionNumber
        self.balance = balance
        self.dischargeStatus = dischargeStatus
        super.init(FirstName: FirstName, lastName: lastName, departmentCode: departmentCode)
    }

    func getPatientId() -> String {
        return patientId
    }

    func getSectionNumber() -> String {
        return sectionNumber
    }

    func getBalance() -> Double {
        return balance
    }

    override func toString() {
        super.toString()
        print("PatientId: \(patientId)")
        print("SectionNumber: \(sectionNumber)")
        print("Balance: \(balance)")
        print("DischargeStatus: \(dischargeStatus)")
    }
}

class Doctor: Person {
    private let maxIdLength = 10

    public var doctorId: String
    public var yearsOfPractice: Int
    public var shiftHours: Double

    init(doctorId: String, yearsOfPractice: Int, shiftHours: Double, FirstName: String, lastName: String, departmentCode: Int) {
        self.doctorId = doctorId
        self.yearsOfPractice = yearsOfPractice
        self.shiftHours = shiftHours
        super.init(FirstName: FirstName, lastName: lastName, departmentCode: departmentCode)
    }

    func getDoctorId() -> String {
        return doctorId
    }

    func getYearsOfPractice() -> Int {
        return yearsOfPractice
    }

    func getShiftHours() -> Double {
        return shiftHours
    }

    override func toString() {
        super.toString()
        print("DoctorId: \(doctorId)")
        print("YearsOfPractice: \(yearsOfPractice)")
        print("ShiftHours: \(shiftHours)")
    }
}

class Nurse: Person {
    private let maxIdLength = 10

    public var nurseId: String
    public var yearsOfPractice: Int
    public var shiftHours: Double
    public var numberOfPatients: Int

    init(nurseId: String, yearsOfPractice: Int, shiftHours: Double, numberOfPatients: Int, FirstName: String, lastName: String, departmentCode: Int) {
        self.nurseId = nurseId
        self.yearsOfPractice = yearsOfPractice
        self.shiftHours = shiftHours
        self.numberOfPatients = numberOfPatients
        super.init(FirstName: FirstName, lastName: lastName, departmentCode: departmentCode)
    }

    func getNurseId() -> String {
        return nurseId
    }

    func getYearsOfPractice() -> Int {
        return yearsOfPractice
    }

    func getShiftHours() -> Double {
        return shiftHours
    }

    override func toString() {
        super.toString()
        print("NurseId: \(nurseId)")
        print("YearsOfPractice: \(yearsOfPractice)")
        print("ShiftHours: \(shiftHours)")
        print("NumberOfPatients: \(numberOfPatients)")
    }
}

class Hospital {
    private var patientList: [Patient]
    private var doctorList: [Doctor]
    private var nurseList: [Nurse]

    init() {
        patientList = []
        doctorList = []
        nurseList = []
    }

    func addPatient(patient: Patient) {
        patientList.append(patient)
    }

    func patientVerify(patientId: String) -> Bool {
        return patientList.contains { $0.getPatientId() == patientId }
    }

    func addDoctor(doctor: Doctor) {
        doctorList.append(doctor)
    }

    func doctorVerify(doctorId: String) -> Bool {
        return doctorList.contains { $0.getDoctorId() == doctorId }
    }

    func addNurse(nurse: Nurse) {
        nurseList.append(nurse)
    }

    func nurseVerify(nurseId: String) -> Bool {
        return nurseList.contains { $0.getNurseId() == nurseId }
    }

    func dischargePatientFromHospital(patientId: String) {
        for patient in patientList {
            if patient.getPatientId() == patientId {
                patient.dischargeStatus = "discharged"
            }
        }
    }

    func addBalanceToPatientProfile(patientId: String, balance: Double) {
        for patient in patientList {
            if patient.getPatientId() == patientId {
                patient.balance += balance
            }
        }
    }

    func deductBalanceFromPatientProfile(patientId: String, balance: Double) {
        for patient in patientList {
            if patient.getPatientId() == patientId {
                patient.balance -= balance
            }
        }
    }

    func changePatientSectionNumber(patientId: String, sectionNumber: String) {
        for patient in patientList {
            if patient.getPatientId() == patientId {
                patient.sectionNumber = sectionNumber
            }
        }
    }

    func incrementDoctorYearsOfPractice(doctorId: String) {
        for doctor in doctorList {
            if doctor.getDoctorId() == doctorId {
                doctor.yearsOfPractice += 1
            }
        }
    }

    func incrementDoctorShiftHours(doctorId: String) {
        for doctor in doctorList {
            if doctor.getDoctorId() == doctorId {
                doctor.shiftHours += 1
            }
        }
    }

    func incrementNurseShiftHours(nurseId: String) {
        for nurse in nurseList {
            if nurse.getNurseId() == nurseId {
                nurse.shiftHours += 1
            }
        }
    }

    func printAllPatientList() {
        for patient in patientList {
            patient.toString()
        }
    }

    func printAllDoctorList() {
        for doctor in doctorList {
            doctor.toString()
        }
    }

    func findNurseAboveSixYearsOfPractice() {
        for nurse in nurseList {
            if nurse.getYearsOfPractice() > 6 {
                nurse.toString()
            }
        }
    }
}

func main() {
    let hospital = Hospital()

    let patient1 = Patient(patientId: "P1234567890", sectionNumber: "A", balance: 1000.0, dischargeStatus: "Not Discharged", FirstName: "John", lastName: "Doe", departmentCode: 1)
    let patient2 = Patient(patientId: "P9876543210", sectionNumber: "B", balance: 500.0, dischargeStatus: "Not Discharged", FirstName: "Jane", lastName: "Smith", departmentCode: 2)

    let doctor1 = Doctor(doctorId: "D1234567890", yearsOfPractice: 5, shiftHours: 8.0, FirstName: "Dr. Mike", lastName: "Johnson", departmentCode: 1)
    let doctor2 = Doctor(doctorId: "D9876543210", yearsOfPractice: 10, shiftHours: 10.0, FirstName: "Dr. Emily", lastName: "Williams", departmentCode: 2)

    let nurse1 = Nurse(nurseId: "N1234567890", yearsOfPractice: 2, shiftHours: 12.0, numberOfPatients: 5, FirstName: "Nurse Mary", lastName: "Brown", departmentCode: 1)
    let nurse2 = Nurse(nurseId: "N9876543210", yearsOfPractice: 7, shiftHours: 8.0, numberOfPatients: 8, FirstName: "Nurse John", lastName: "Smith", departmentCode: 2)

    hospital.addPatient(patient: patient1)
    hospital.addPatient(patient: patient2)

    hospital.addDoctor(doctor: doctor1)
    hospital.addDoctor(doctor: doctor2)

    hospital.addNurse(nurse: nurse1)
    hospital.addNurse(nurse: nurse2)

    let patientIdToVerify = "P1234567890"
    let doctorIdToVerify = "D9876543210"
    let nurseIdToVerify = "N1234567890"

    let isPatientVerified = hospital.patientVerify(patientId: patientIdToVerify)
    let isDoctorVerified = hospital.doctorVerify(doctorId: doctorIdToVerify)
    let isNurseVerified = hospital.nurseVerify(nurseId: nurseIdToVerify)

    print("Is Patient \(patientIdToVerify) verified: \(isPatientVerified)")
    print("Is Doctor \(doctorIdToVerify) verified: \(isDoctorVerified)")
    print("Is Nurse \(nurseIdToVerify) verified: \(isNurseVerified)")

    hospital.dischargePatientFromHospital(patientId: "P1234567890")
    hospital.addBalanceToPatientProfile(patientId: "P9876543210", balance: 200.0)

    hospital.incrementDoctorYearsOfPractice(doctorId: "D1234567890")
    hospital.incrementDoctorShiftHours(doctorId: "D9876543210")
    hospital.incrementNurseShiftHours(nurseId: "N1234567890")

    print("\nPatient List:")
    hospital.printAllPatientList()

    print("\nDoctor List:")
    hospital.printAllDoctorList()

    print("\nNurses with more than six years of practice:")
    hospital.findNurseAboveSixYearsOfPractice()
}

main()
