import Foundation

func compterchar(_ chemin: String) {
    do {
        var nombredee = 0
        let contenuFichier = try String(contentsOfFile: chemin, encoding: .utf8)
        
        for character in contenuFichier {
            if character == "e" {
                nombredee += 1
            }
        }
        
        print("Nombre de caractères 'e' dans le fichier : \(nombredee)")
    } catch {
        print("Erreur lors de la lecture du fichier : \(error.localizedDescription)")
    }
}

let cheminDuFichier = "C:\\Users\\felix\\OneDrive\\Documents\\texte\\texte.txt"

compterchar(cheminDuFichier)
