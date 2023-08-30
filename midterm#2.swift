
import Foundation

func lireContenuDuFichier(_ chemin: String) {
    do {
        let texte = try String(contentsOfFile: chemin, encoding: .utf8)
        
        print("Contenu du fichier:")
        print(texte)
    } catch {
        print("Erreur lors de la lecture du fichier : \(error.localizedDescription)")
    }
}
lireContenuDuFichier("C:\\Users\\felix\\OneDrive\\Documents\\texte\\texte.txt")
