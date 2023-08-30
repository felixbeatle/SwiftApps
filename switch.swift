import Foundation

func changefile(_ cheminFichier1: String, _ cheminFichier2: String) {
    do {
        let filecontent = try String(contentsOfFile: cheminFichier1, encoding: .utf8)
        let filecontent2 = try String(contentsOfFile: cheminFichier2, encoding: .utf8)
        
        if filecontent.isEmpty && filecontent2.isEmpty {
            print("Erreur: Les deux fichiers sont vides.")
            return
        }
        
        try filecontent2.write(toFile: cheminFichier1, atomically: false, encoding: .utf8)
        try filecontent.write(toFile: cheminFichier2, atomically: false, encoding: .utf8)
        
        print("file have been exchange.")
    } catch {
        print("error when reading file : \(error.localizedDescription)")
    }
}

let cheminFichier1 = "yourpath"
let cheminFichier2 = "yourpath"

changefile(cheminFichier1, cheminFichier2)
