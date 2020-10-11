import Cocoa

//import Foundation


var str = "Hello, playground"

class Animal: Any {
//    init(){
//    }
    func identifiant() -> String {
        return "" // Q: on pourrait mettre un optionnel ? G a dit oui mais quelle serait la différence ?
    }
}
//commentaire perso: on a créé une classe (notons Any) avec une méthode avec return pas d'astuce supplémentaire
//var animalInconnu1 = Animal()
//print(animalInconnu1.identifiant())

class Oiseaux: Animal {
    override func identifiant() -> String {
        let numOiseau:Int = Int.random(in:0...100)
        return "OISEAU \(numOiseau)"
    }
}

//commentaire perso: on a créé une sous-classe, on a surchargé la méthode pour préciser
class Reptiles: Animal {
    override func identifiant() -> String {
        let numReptile:Int = Int.random(in:100...200)
        return "REPTILE \(numReptile)"
    }
}
class Felins: Animal {
    override func identifiant() -> String {
        let numFelin:Int = Int.random(in:200...300)
        return "FELIN \(numFelin)"
    }
}

class Perroquets: Oiseaux {
    override func identifiant() -> String {
    return "\(super.identifiant())_PER"
    }
}
class Canaris: Oiseaux {
    override func identifiant() -> String {
        return "\(super.identifiant())_CAN"// ça c'est imporessonniant, l'utilisation de super, il faut que je comprenne comment le programme fonctionne

    }
}

class Serpents: Reptiles {
    override func identifiant() -> String {
        return "\(super.identifiant())_SER"
    }
}
class Lezards: Reptiles {
    override func identifiant() -> String {
        return "\(super.identifiant())_LEZ"
    }
}


class Tigres: Felins {
    override func identifiant() -> String {
        return "\(super.identifiant())_TIG"
    }
}
    
class Lions: Felins {
    override func identifiant() -> String {
        return "\(super.identifiant())_LEO"
    }
}


class Zoo {
    var zoo: Array = [Animal()]
    var nombreTotalAnimauxDuZoo: Int = 0
    
    func ajoutAnimal(animal: Animal) {
        zoo.append(animal)
        nombreTotalAnimauxDuZoo += 1
    }
}



var zoo1 = Zoo()

var lez1 = Lezards()
print(lez1.identifiant())
zoo1.ajoutAnimal(animal: lez1)

var lion1 = Lions()
print(lion1.identifiant())
zoo1.ajoutAnimal(animal: lion1)


var lez2 = Lezards()
zoo1.ajoutAnimal(animal: lez2)
print(zoo1.nombreTotalAnimauxDuZoo)
