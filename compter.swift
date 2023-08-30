import Foundation

func compterLignesEtMotsDansFichier(_ chemin: String) {
    do {
        let contenuFichier = try String(contentsOfFile: chemin, encoding: .utf8)
        
      
        
        // Compter le nombre de mots
        let nombreMots = contenuFichier.components(separatedBy: .whitespacesAndNewlines).filter { !$0.isEmpty }.count
        
        print("Nombre de mots dans le fichier : \(nombreMots)")
    } catch {
        print("Erreur lors de la lecture du fichier : \(error.localizedDescription)")
    }
}

let cheminDuFichier = "C:\\Users\\felix\\OneDrive\\Documents\\texte\\texte.txt"

compterLignesEtMotsDansFichier(cheminDuFichier)
