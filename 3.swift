import Foundation

func compterCaracteresDansFichier(_ chemin: String) {
    do {
        let contenuFichier = try String(contentsOfFile: chemin, encoding: .utf8)
        
        var frequences: [Character: Int] = [:]
        
        for caractere in contenuFichier {
            let caractereSet = CharacterSet.whitespacesAndNewlines.union(CharacterSet.punctuationCharacters)
            if caractereSet.contains(caractere.unicodeScalars.first!) {
                continue
            }
            
            frequences[caractere, default: 0] += 1
        }
        
        print("====================================")
        for (caractere, frequence) in frequences.sorted(by: { $0.key < $1.key }) {
            print("\(caractere): \(frequence)")
        }
        print("====================================")
        
    } catch {
        print("Erreur lors de la lecture du fichier : \(error.localizedDescription)")
    }
}

let cheminDuFichier = "C:/Users/felix/OneDrive/Documents/texte/texte.txt"

compterCaracteresDansFichier(cheminDuFichier)
