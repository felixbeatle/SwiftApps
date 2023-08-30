import Foundation

func ajouterAuFichierTexte(_ texte: String, auChemin chemin: String) {
    do {
        let fichier = try FileHandle(forWritingTo: URL(fileURLWithPath: chemin))
        fichier.seekToEndOfFile()
        if let donnees = texte.data(using: .utf8) {
            fichier.write(donnees)
            print("Chaîne ajoutée au fichier avec succès.")
        }
        fichier.closeFile()
    } catch {
        print("Erreur lors de l'écriture dans le fichier : \(error.localizedDescription)")
    }
}

// Chemin vers le fichier texte
let cheminDuFichier = "C:\\Users\\felix\\OneDrive\\Documents\\texte\\texte.txt"

print("Veuillez entrer une chaîne de caractères :")
if let input = readLine() {
    ajouterAuFichierTexte(input + "\n", auChemin: cheminDuFichier)
}
