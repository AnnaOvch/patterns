import UIKit

//Мост (Bridge) позволяет разделить абстракцию от реализации, так чтобы реализация в любой момент могла быть поменяна, не меняя при этом абстракции.
protocol BaseHeadphones {
    func playSimpleSound()
    func playBassSound()
}

struct  CheapHeadPhones: BaseHeadphones {
    func playSimpleSound() {
        print("trrr phhhh trrr phhh")
    }
    
    func playBassSound() {
        print("shhhhhhhhhhhhhhh shhhhhhhhh")
    }
}
struct ExpensiveHeadphones: BaseHeadphones {
    func playSimpleSound() {
        print("lalala")
    }
    
    func playBassSound() {
        print("alala papapa rarara tatata")
    }
}

struct Player {
    var headPhones: BaseHeadphones!
    func playMusic() {
        headPhones.playBassSound()
        headPhones.playSimpleSound()
    }
}

let headPhonesExpensive = ExpensiveHeadphones()
let headPhonesCheap = CheapHeadPhones()
var player = Player(headPhones: headPhonesCheap)
player.playMusic()
player.headPhones = headPhonesExpensive
player.playMusic()



