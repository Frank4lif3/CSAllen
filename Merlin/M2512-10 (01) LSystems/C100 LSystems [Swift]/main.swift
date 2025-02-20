import Foundation

public class ProductionRule {
    public let predecessor : Character
    public let successor: String

    public init(predecessor: Character, successor: String) {
        self.predecessor = predecessor
        self.successor = successor
    }
    public func isTerminal() -> Bool {
        return String(predecessor) == successor
    }
}

public class ProductionRules {
    private typealias RulesDictionary = Dictionary<Character, ProductionRule>
    private let rulesDictionary: RulesDictionary

    public init(alphabet: Set<Character>, productionRules:[ProductionRule]) {
        var rulesDictionary = RulesDictionary()

        // add all explicitly defined rules
        for productionRule in productionRules {
            precondition(rulesDictionary[productionRule.predecessor] == nil,
                         "Duplicate rules are not permited: \(productionRule.predecessor)) was previously defined.")
            precondition(alphabet.contains(productionRule.predecessor),
                         "Predecessor must be present in alphabet. \(productionRule.predecessor) is not in the alphabet.")
            rulesDictionary[productionRule.predecessor] = productionRule
        }

        
        // Add all implict rules (constants, terminals)

        let predecessors = Set(productionRules.map { $0.predecessor })
        let implicitTerminals = alphabet.subtracting(predecessors)
        for implicitTerminal in implicitTerminals {
            rulesDictionary[implicitTerminal] =
              ProductionRule(predecessor: implicitTerminal, successor: String(implicitTerminal))   
        }
        self.rulesDictionary = rulesDictionary
    }
    
    public func successor(predecessor: Character) -> String {
        guard let foundSuccessor = rulesDictionary[predecessor]?.successor else {
            fatalError("unable to find successor for predecessor \(predecessor)")
        }
        return foundSuccessor
    }

    public func Terminals() -> Set<Character> {
        let terminalRules = rulesDictionary.values.filter { $0.isTerminal() }
        return Set(terminalRules.map { $0.predecessor })
    }
    
    public func nonTerminals() -> Set<Character> {
        let nonTerminalRules = rulesDictionary.values.filter {!$0.isTerminal()}
        return Set(nonTerminalRules.map {$0.predecessor})
    }

    
}
class LSystem  {
    private let alphabet: Set<Character>
    private let axiom: String
    private let productionRules: ProductionRules

    public init(alphabet: Set<Character>, axiom: String, productionRules: [ProductionRule]) {
        self.alphabet = alphabet
        self.axiom = axiom
        self.productionRules = ProductionRules(alphabet:alphabet, productionRules: productionRules)
    }

    func nonTerminals() -> Set<Character> {
        return Set(productionRules.nonTerminals())
    }

    func terminals() -> Set<Character> {
        return Set(productionRules.Terminals())
    }

    func produce(generationCount:Int, initiator: String? = nil) -> String{
        return (generationCount == 0) ?
        axiom : produce(generationCount: generationCount - 1).map {
            productionRules.successor(predecessor: $0) }.joined()
    }
        

    /*
    func produce(generationCount:Int, initiator:String? = nil) -> String {
        
    }
    
     */

}

func main () {
    var alphabet = Set<Character>()
    var axiom = String()
    var productionRules = [ProductionRule]()
    
    // read from standard input
    while let line = readLine() {
        let arguments = line.split(separator:":")
        precondition(arguments.count >= 1, "At least one argument is required")
        let command = arguments[0]

        // parse the input, evaluate the commands, create the needed structures

        switch command {
        case "productionRule":
            let ruleSplit = String(arguments[1]).components(separatedBy:" -> ")
            let predecessor = Character(ruleSplit[0])
            let successor = ruleSplit[1]
            productionRules.append(ProductionRule(predecessor: predecessor, successor: successor))
        case "alphabet":
            alphabet = Set(Array(arguments[1]))
        case "axiom":
            axiom = String(arguments[1])
        case "generationCount":
            let lindenmyer = LSystem(alphabet:alphabet, axiom:axiom, productionRules: productionRules)
            print("terminals:\(lindenmyer.terminals().sorted())")
            print("nonTerminals:\(lindenmyer.nonTerminals().sorted())")
            for count in 0 ... Int(arguments[1])! {
                print("generation[\(count)]:\(lindenmyer.produce(generationCount: Int(count)))")
            }

        default:
            fatalError("there are no arguments")
        }
    }
        
    // create and invoke produce() on L-system



    while let line = readLine() {
        let arguments = line.split(separator:":")
        precondition(arguments.count >= 1, "At least one argument is required")
        print(arguments)
    }
    
}

main()

/*
class LSystem  {
    private let alphabet: Set<Character>
    private let axiom: String
    private let productionRules: ProductionRules

    public init(alphabet: Set<Character>, axiom: String, productionRules: [ProductionRule]) {
    }

    func nonTerminals() -> Set<Character> {
    }

    func terminals() -> Set<Character> {
    }

    func produce(generationCount:Int, initiator:String? = nil) -> String {
    }

}

func main () {
    // read from standard input

    // parse the input, evaluate the commands, create the needed structures
    
    // create and invoke produce() on L-system
}

 */
