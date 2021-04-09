import UIKit

var fruits = ["apple", "pineapple"]

var json = [
    "1": "appple",
    "2": "pineapple"
]


let coordinate: (x: Float, y: Float, z: Float) = (x: 100.5, y: 120.1, z: 123.3)

enum Animal {
    case dog, cat, horse
    
    var name: String {
        switch self {
        case .cat:
            return "gatito"
        case .dog:
            return "perrito"
        default:
            return "animalito"
        }
    }
    
    func makeANoise() {
        
    }
    
    func walk(distance: Float) {
        
    }
    
    func isTrained() -> Bool {
        return true
    }
}

let myPet: Animal = .dog

myPet.name

enum ClientType {
    case gold, silver, platinum
}

fruits.forEach { fruit in
    print(fruit)
}

while myPet == .cat {
    
}

var myPet2: Animal? = .cat

myPet2 = nil


var totalAmount: Double? = nil

//asyncrono llamada al api del banco

totalAmount = 100

if totalAmount == 0 {
    
}

myPet2 = .cat
myPet2!.makeANoise()

if let myNewPet = myPet2 {
    myNewPet.makeANoise()
}

let myPet2Forced = myPet2 ?? .cat
myPet2Forced.makeANoise()

myPet2?.makeANoise()


myPet2?.isTrained()

class Client {
    let uid: Int
    var name: String?
    var lastName: String
    
    init(uid: Int, name: String?, lastName: String) {
        self.uid = uid
        self.name = name
        self.lastName = lastName
    }
    
    func transferMoney() {
        
    }
}

struct BankAccountInformation {
    let uid: String
    var accountNumber: String
    var cci: String
    var swiftCode: String
}

//api

//value type // struct
var myBankAccount = BankAccountInformation(uid: "1982", accountNumber: "123124234334", cci: "12323434543566435563545", swiftCode: "13123123123")

//api

//reference type // class
var client = Client(uid: 1235, name: "Piero", lastName: "Sifuentes")


var myBankAccount2 = myBankAccount

myBankAccount2.accountNumber = "1111111111111111111111111"

var client2 = client

client2.name = "Jose"
client2.lastName = "Reyes"

myBankAccount.accountNumber
myBankAccount2.accountNumber

myBankAccount.accountNumber = "22222222222222"
myBankAccount.accountNumber
myBankAccount2.accountNumber

client.name
client.lastName
client2.name
client2.lastName

client.name = nil
client.name
client2.name

struct CreditCard {
    var number: String
    var brand: String
    
    var validate: () -> Void
    
    
}


let visa = CreditCard(number: "123", brand: "Visa") {

}
