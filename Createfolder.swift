import Foundation

func createMultipleFoldersAfterEachLineOfText(_ cheminFichier1: String) {
    do {
        let contenuFichier1 = try String(contentsOfFile: cheminFichier1, encoding: .utf8)
        let folderNames = contenuFichier1.components(separatedBy: .newlines)
        
        let fileManager = FileManager.default
        let baseDirectory = URL(fileURLWithPath: fileManager.currentDirectoryPath)
        
        for folderName in folderNames {
            let folderURL = baseDirectory.appendingPathComponent(folderName)
            do {
                try fileManager.createDirectory(at: folderURL, withIntermediateDirectories: false, attributes: nil)
                print("Folder '\(folderName)' created successfully.")
            } catch {
                print("Error creating folder '\(folderName)': \(error.localizedDescription)")
            }
        }
    } catch {
        print("Error reading fichier1.txt: \(error.localizedDescription)")
    }
}

let cheminFichier1 = "C:\\Users\\felix\\OneDrive\\Documents\\texte\\fichier1.txt"
createMultipleFoldersAfterEachLineOfText(cheminFichier1)
