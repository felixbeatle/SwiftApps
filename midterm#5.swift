
import Foundation

func confirmerPresenceStringDansFichier(_ texteRecherche: String, chemin: String) {
    do {
        let contenuFichier = try String(contentsOfFile: chemin, encoding: .utf8)
        
        if contenuFichier.contains(texteRecherche) {
            print("Trouvé")
        } else {
            print("Not found")
        }
    } catch {
        print("Erreur lors de la lecture du fichier : \(error.localizedDescription)")
    }
}
let cheminDuFichier = "C:\\Users\\felix\\OneDrive\\Documents\\texte\\texte.txt"
print("Veuillez entrer une chaîne de caractères à rechercher :")
if let texteRecherche = readLine() {
    confirmerPresenceStringDansFichier(texteRecherche, chemin: cheminDuFichier)
}


