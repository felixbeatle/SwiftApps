import Foundation

class Engine {
    var id: String
    var model: String
    
    init(id: String, model: String) {
        self.id = id
        self.model = model
    }
    
    func writeToFile() {
        let text = "id: \(id)\nmodel: \(model)\n"
        writeTextToFile(text)
    }
    
    internal func writeTextToFile(_ text: String) {
        guard let fileURL = getFileURL() else {
            print("Error: File URL is invalid.")
            return
        }
        
        do {
            try text.write(to: fileURL, atomically: true, encoding: .utf8)
            print("Information written to file: \(fileURL.path)")
        } catch {
            print("Error writing to file: \(error)")
        }
    }
    
    private func getFileURL() -> URL? {
        let folderPath = "C:/Users/felix/OneDrive/Documents/textfileswift"
        let filePath = "\(folderPath)/\(id)_\(model).txt"
        return URL(fileURLWithPath: filePath)
    }
    
    func printInfo() {
        print("id: \(id)")
        print("model: \(model)")
    }
}

class Car: Engine {
    var size: Double
    var usage: String
    var type: Bool
    
    init(id: String, model: String, size: Double, usage: String, type: Bool) {
        self.size = size
        self.usage = usage
        self.type = type
        super.init(id: id, model: model)
    }
    
    override func writeToFile() {
        let text = "id: \(id)\nmodel: \(model)\nsize: \(size)\nusage: \(usage)\ntype: \(type)\n"
        writeTextToFile(text)
    }
}

class Truck: Engine {
    var capacity: Double
    var color: String
    
    init(id: String, model: String, capacity: Double, color: String) {
        self.capacity = capacity
        self.color = color
        super.init(id: id, model: model)
    }
    
    override func writeToFile() {
        let text = "id: \(id)\nmodel: \(model)\ncapacity: \(capacity)\ncolor: \(color)\n"
        writeTextToFile(text)
    }
}

// Usage example:
let car = Car(id: "456", model: "Toyota", size: 2.5, usage: "personal", type: true)
car.printInfo()
car.writeToFile()

let truck = Truck(id: "789", model: "Ford", capacity: 5000, color: "Blue")
truck.printInfo()
truck.writeToFile()
