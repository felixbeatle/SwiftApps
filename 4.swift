import Foundation

func deleteLinesIndexImpair(_ cheminFichier: String) {
    do {
        let contenuFichier = try String(contentsOfFile: cheminFichier, encoding: .utf8)
        var linesFichier = contenuFichier.components(separatedBy: .newlines)
        linesFichier = linesFichier.enumerated().compactMap { (index, ligne) in
            index % 2 == 0 ? ligne : nil
        }
        let nouveauContenuFichier = linesFichier.joined(separator: "\n")
        try nouveauContenuFichier.write(toFile: cheminFichier, atomically: false, encoding: .utf8)
        print("Lignes avec index impair supprimées avec succès.")
    } catch {
        print("Erreur lors de la modification du fichier : \(error.localizedDescription)")
    }
}

let cheminFichier = "C:\\Users\\felix\\OneDrive\\Documents\\texte\\fichier1.txt"

deleteLinesIndexImpair(cheminFichier)
