//: Playground - noun: a place where people can play

import UIKit

//使用 enum 来创建一个枚举。就像类和其他所有命名类型一样，枚举可以包含方法。
//默认情况下，Swift 按照从 0 开始每次加 1 的方式为原始值进行赋值，不过你可以通过显式赋值进行改变。在 上面的例子中， Ace 被显式赋值为 1，并且剩下的原始值会按照顺序赋值。
//你也可以使用字符串或者浮点数作为 枚举的原始值。
//使用 rawValue 属性来访问一个枚举成员的原始值。
enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}
func compareRank(_ A: Rank, greaterThan B: Rank) -> Bool {
    return A.rawValue > B.rawValue
}
let ace = Rank.Ace
Rank.Ace.simpleDescription()
let aceRawValue = ace.rawValue
let compareResult = compareRank(Rank.Ace, greaterThan: Rank.Eight)



//使用 init?(rawValue:) 初始化构造器在原始值和枚举值之间进行转换。
if let convertedRank = Rank(rawValue: 3) {
    let threeDescription = convertedRank.simpleDescription()
}



//枚举的成员值是实际值，并不是原始值的另一种表达方法。实际上，如果没有比较有意义的原始值，你就不需要提供原始值。
enum Suit: Int {
    case Spades = 1, Hearts, Diamonds, Clubs
    func simpleDescription() -> String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
        }
    }
    func color() -> String {
        switch self {
        case .Spades, .Clubs:
            return "black"
        case .Hearts, .Diamonds:
            return "red"
        }
    }
}
let hearts = Suit.Hearts
let heartsDescription = hearts.simpleDescription()
let heartsColor = hearts.color()
//注意，有两种方式可以引用 Hearts 成员:给 hearts 常量赋值时，枚举成员 Suit.Hearts 需要用全名来引用，因 为常量没有显式指定类型。在 switch 里，枚举成员使用缩写 .Hearts 来引用，因为 self 的值已经知道是一个 suit 。已知变量类型的情况下你可以使用缩写。



//一个枚举成员的实例可以有实例值。相同枚举成员的实例可以有不同的值。创建实例的时候传入值即可。
//实例值和原始值是不同的:枚举成员的原始值对于所有实例都是相同的，而且你是在定义枚举的时候设置原始值。
enum ServerResponse {
    case Result(String, String)
    case Failure(String)
}

let success = ServerResponse.Result("6:00 am", "8:09 pm")
let failure = ServerResponse.Failure("Out of cheese.")

switch success {
case let .Result(sunrise, sunset):
    let serverResponse = "Sunrise is at \(sunrise) and sunset is at \(sunset)."
case let .Failure(message):
    print("Failure... \(message)")
}




//使用 struct 来创建一个结构体。结构体和类有很多相同的地方，比如方法和构造器。
//它们之间最大的一个区别就 是结构体是传值，类是传引用。
struct Card {
    var rank: Rank
    var suit: Suit
//    init(rank: Rank, suit: Suit) {
//        self.rank = rank
//        self.suit = suit
//    }
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
    
//    func allCards() -> [String] {
//        var cardsArray = [String]()
//        for i in 1...13 {
//            let rank = Rank(rawValue: i)
//            for j in 0..<4 {
//                let suit = Suit(rawValue: j)
//                let card = suit!.simpleDescription() + " " + rank!.simpleDescription()
//                cardsArray.append(card)
//            }
//        }
//        return cardsArray
//    }
    // To get a full deck we need to loop through all the ranks, assign each suit and put those into an array. The rank has a int raw value so we can use that.
    mutating func Deck() -> String {
        var stringTogether = ""
        
        for i in 0..<14 {
            if let convertedRank = Rank(rawValue: i) {
                self.rank = convertedRank
                
                for y in 0..<5 {
                    if let convertedSuit = Suit(rawValue: y) {
                        self.suit = convertedSuit
                        stringTogether = "\(stringTogether) \(self.simpleDescription())  "
                    }
                }
            }
        }
        return stringTogether
    }
}
var threeOfSpades = Card(rank: .Three, suit: .Spades)
//Card.init(rank: .Three, suit: .Spades)//已知变量类型的情况下你可以使用缩写。
let threeOfSpadesDescription = threeOfSpades.simpleDescription()

//threeOfSpades.allCards()
print(threeOfSpades.Deck())



		