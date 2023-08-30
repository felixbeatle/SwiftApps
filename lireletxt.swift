import Foundation

func lireContenuDuFichier(_ chemin: String) {
    do {
        let texte = try String(contentsOfFile: chemin, encoding: .utf8)
        
        if texte.contains("if") {
            print("Il y a un 'if' dans le fichier.")
        } else {
            print("Il n'y a pas de 'if' dans le fichier.")
        }
        
        print("Contenu du fichier:")
        print(texte)
    } catch {
        print("Erreur lors de la lecture du fichier : \(error.localizedDescription)")
    }
}

let cheminDuFichier = "C:\\Users\\felix\\OneDrive\\Documents\\texte\\texte.txt"

lireContenuDuFichier(cheminDuFichier)
