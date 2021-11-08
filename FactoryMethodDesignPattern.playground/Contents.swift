// Factory Design Pattern
// Creational Design Pattern
// For Creating Object of a class

// Factory Pattern is one way of implementing dependency injection

import UIKit

protocol Level {
    var level: String { get }
    
    func showLevel() -> Void
}

extension Level {
    func showLevel() {
        print("It's \(self.level) Level.")
    }
}

struct Easy: Level {
    var level: String = "Easy"
}

struct Medium: Level {
    var level: String = "Medium"
}

struct Hard: Level {
    var level: String = "Hard"
}

struct LevelFactory {
    
    enum Levels {
        case easy
        case medium
        case hard
    }
    
    static func generate(_ level: Levels) -> Level {
        switch level {
            case .easy:
                return Easy()
            case .medium:
                return Medium()
            case .hard:
                return Hard()
        }
    }
}

// Main Function
struct Main {
    static func main() -> Void {
        let hard = LevelFactory.generate(.hard)
        
        hard.showLevel()
    }
}

// Call Main Function
Main.main()
