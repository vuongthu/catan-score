import Foundation

class Player {
    var name: String
    var color: Theme
    var points: UInt8 = 2
    
    init(name: String, color: Theme, points: UInt8) {
        self.name = name
        self.color = color
        self.points = points
    }
    
    init(name: String, color: Theme) {
        self.name = name
        self.color = color
        self.points = 2
    }
    
    func increment() {
        points += 1
    }
    
    func increment(by amount: UInt8) {
        points += amount
    }
    
    func decrement() {
        points -= 1
    }
    
    func decrement(by amount: UInt8) {
        points -= amount
    }
}

extension Player {
    static let sampleData: [Player] =
    [
        Player(name: "Thu",
               color: .green
              ),
        Player(name: "Frank",
               color: .blue
              ),
        Player(name: "James",
               color: .brown
              ),
        Player(name: "Andy",
               color: .red
              ),
        Player(name: "Anh",
               color: .purple
              ),
        Player(name: "Brian",
               color: .orange
              )
    ]
}
