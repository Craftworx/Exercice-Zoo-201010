import Cocoa

class Animal: Any {
    func identifiant() -> String {
        return "" // Q: on pourrait mettre un optionnel ? G a dit oui mais quelle serait la différence ?
    }
}
//commentaire perso: on a créé une classe (notons Any) avec une méthode avec return pas d'astuce supplémentaire
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
// imporessonnant, l'utilisation de super, il faut que je comprenne comment le programme fonctionne
    }
}

class Canaris: Oiseaux {
    override func identifiant() -> String {
        return "\(super.identifiant())_CAN"
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
    var nombredOiseaux: Int = 0
    var nombreDeFelins: Int = 0
    var nombreDeReptiles: Int = 0

    func ajoutAnimal(animal: Animal) {
        zoo.append(animal)
        nombreTotalAnimauxDuZoo += 1
    }
    func inventaire() {
        for bestiole in zoo {
            if bestiole is Oiseaux {
                nombredOiseaux += 1
            } else if bestiole is Reptiles {
                nombreDeReptiles += 1
            } else if bestiole is Felins {
                nombreDeFelins += 1
            }
        }
    }
    func printInventaire() {
            print ("""
                \(nombreTotalAnimauxDuZoo) animaux dans ce zoo, dont:
                \(nombredOiseaux) oiseaux
                \(nombreDeFelins) felins
                \(nombreDeReptiles) reptiles
                """)
    }
}

var zoo1 = Zoo()

var gecko = Lezards()
print(gecko.identifiant())
zoo1.ajoutAnimal(animal: gecko)

var Royal = Lions()
print(Royal.identifiant())
zoo1.ajoutAnimal(animal: Royal)

var varan = Lezards()
print(varan.identifiant())
zoo1.ajoutAnimal(animal: varan)

var coco = Perroquets()
zoo1.ajoutAnimal(animal: coco)

var Terreur = Tigres()
print(Terreur.identifiant())

print("\(zoo1.nombreTotalAnimauxDuZoo) animaux dans le zoo")
zoo1.inventaire()
zoo1.printInventaire()




