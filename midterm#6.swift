
import Foundation

class Enseignant {
    let nom: String
    
    init(nom: String) {
        self.nom = nom
    }
    
    func assignTask(tache: String, etudiant: Etudiant) {
        print("L'enseignant \(nom) assigne la tache \(tache) à l'étudiant \(etudiant.nom)")
    }
    
    func evaluatePerformance(tache: String, etudiant: Etudiant, note: Int) {
        print("L'enseignant \(nom) évalue la tache \(tache) de l'étudiant \(etudiant.nom) avec la note \(note)")
    }
}

class Etudiant {
    let nom: String
    
    init(nom: String) {
        self.nom = nom
    }
    
    func submit(tache: String) {
        print("L'étudiant \(nom) rend la tache \(tache)")
    }
    
    func participateInDiscussion(discussion: Discussion) {
        print("L'étudiant \(nom) participe à la discussion \(discussion.discussionname)")
        
        while true {
            print("veuillez entrez votre message ou ecrire (fin):")
        let message = readLine()
        if message == "fin" {
            break
        }

        discussion.addComment(comment: message! )
        discussion.displaydiscussion()
        
        }
    }
}

class Discussion {
    let discussionid: Int
    let discussionname: String
    let folderPath: String
    var comments: [String]
    
    init(discussionid: Int, discussionname: String, folderPath: String) {
        self.discussionid = discussionid
        self.discussionname = discussionname
        self.folderPath = folderPath
        self.comments = []
    }

    func addComment(comment: String) {
        comments.append(comment)
        let filename = "\(discussionname).txt"
        let path = folderPath + "/" + filename
        
        if let outputStream = OutputStream(toFileAtPath: path, append: true) {
            outputStream.open()
            let data = "\(comment)\n".data(using: .utf8)!
            let buffer = [UInt8](data)
            
            let bytesWritten = outputStream.write(buffer, maxLength: buffer.count)
            if bytesWritten == -1 {
                print("Failed to write to the discussion file.")
            } else {
                print("Successfully wrote \(bytesWritten) bytes to the discussion file.")
            }
            
            outputStream.close()
        } else {
            print("Failed to create the discussion file.")
        }
    }

    func displaydiscussion() {
        print("Discussion \(discussionname) :")
        for comment in comments {
            print(comment)
        }
    }

}



print ("welcome to the app")
print("are you a student or a teacher ?")
let role = readLine()
if role == "student" {
    print("please enter your name")
    let name = readLine()
    let etudiant = Etudiant(nom: name!)
    print("please enter the name of the discussion you want to participate in")
    let discussionname = readLine()
    let discussion = Discussion(discussionid: 1, discussionname: discussionname!, folderPath: "C:\\Users\\felix\\OneDrive\\Documents\\texte")
    etudiant.participateInDiscussion(discussion: discussion)
} else if role == "teacher" {
    print("please enter your name")
    let name = readLine()
    let enseignant = Enseignant(nom: name!)
    print("choose an option :") 
    print("1. assign a task to a student")
    print("2. evaluate a student's performance")
    let option = readLine()
    if option == "1" {
        print("please enter the name of the student")
        let name = readLine()
        let etudiant = Etudiant(nom: name!)
        print("please enter the name of the task")
        let task = readLine()
        enseignant.assignTask(tache: task!, etudiant: etudiant)
    } else if option == "2" {
        print("please enter the name of the student")
        let name = readLine()
        let etudiant = Etudiant(nom: name!)
        print("please enter the name of the task")
        let task = readLine()
        print("please enter the grade")
        let grade = readLine()
        enseignant.evaluatePerformance(tache: task!, etudiant: etudiant, note: Int(grade!)!)
    } else {
        print("please enter a valid option")
    }
    
} else {
    print("please enter a valid role")
}


