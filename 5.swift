import Foundation

func rechercherPhraseDansFichier(_ cheminFichier: String, _ phraseRecherchee: String) {
    do {
        let contenuFichier = try String(contentsOfFile: cheminFichier, encoding: .utf8)
        let phrases = contenuFichier.components(separatedBy: ".")
        
        let phrasesTrouvees = phrases.filter { $0.contains(phraseRecherchee) }
        
        if phrasesTrouvees.isEmpty {
            print("Erreur : La phrase n'a pas été trouvée dans le fichier.")
        } else {
            print("Succès!")
            print("Fréquence : \(phrasesTrouvees.count)")
        }
    } catch {
        print("Erreur lors de la lecture du fichier : \(error.localizedDescription)")
    }
}

print("Entrez une phrase ou un mot à rechercher dans le fichier :")
if let phraseRecherchee = readLine() {
    let cheminFichier = "C:\\Users\\felix\\OneDrive\\Documents\\texte\\fichier1.txt"
    rechercherPhraseDansFichier(cheminFichier, phraseRecherchee)
}
