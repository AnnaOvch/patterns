import UIKit

//определяет скелет алгоритма, перекладывая ответственность за некоторые его шаги на подклассы. Паттерн позволяет подклассам переопределять шаги алгоритма, не меняя его общей структуры.

class AnyPhoneTemplate {
    func makePhone() {
        takeBox()
        takeCamera()
        takeMicrophone()
        assemble()
    }
    func takeBox() {
        print("Taking a box")
    }
    func takeCamera() {
        print("Taking a camera")
    }
    func takeMicrophone() {
        print("Taking a microphone")
    }
    func assemble() {
        print("Assembling everythig")
    }
}

class iPhoneMaker: AnyPhoneTemplate {
    func design() {
        print("Putting label 'Designed in California'")
    }
    override func takeBox() {
        design()
        super.takeBox()
        
    }
}
class AndroidMaker: AnyPhoneTemplate {
    func addRam() {
        print("Installing 2Gigs of RAM")
    }
    func addCPU() {
        print("Installing 4 more CPUs")
    }
    override func assemble() {
        addRam()
        addCPU()
        super.assemble() }
}
let android = AndroidMaker()
let iPhine = iPhoneMaker()
android.makePhone()
iPhine.makePhone()

