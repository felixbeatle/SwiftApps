import Foundation

func interchangerContenuFichiers(_ cheminFichier1: String, _ cheminFichier2: String) {
    do {
        let contenuFichier1 = try String(contentsOfFile: cheminFichier1, encoding: .utf8)
        let contenuFichier2 = try String(contentsOfFile: cheminFichier2, encoding: .utf8)
        
        try contenuFichier2.write(toFile: cheminFichier1, atomically: false, encoding: .utf8)
        try contenuFichier1.write(toFile: cheminFichier2, atomically: false, encoding: .utf8)
        
        print("Le contenu des fichiers a été interchangé avec succès.")
    } catch {
        print("Erreur lors de l'interchangement des fichiers : \(error.localizedDescription)")
    }
}

let cheminFichier1 = "C:\\Users\\felix\\OneDrive\\Documents\\texte\\fichier1.txt"
let cheminFichier2 = "C:\\Users\\felix\\OneDrive\\Documents\\texte\\fichier2.txt"

interchangerContenuFichiers(cheminFichier1, cheminFichier2)
