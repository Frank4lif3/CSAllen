// Add your code below
struct Real {
    let isNegative: Bool
    let significandBitPattern: UInt64
    let exponentBitPattern: UInt

    public init(_ d:Double) {
        isNegative = (d<0)
        significandBitPattern = d.significandBitPattern
        exponentBitPattern = d.exponentBitPattern
    }

    public init(_ n:Int) {
        isNegative = (n<0)
        significandBitPattern = UInt64(Double(n).significandBitPattern)
        exponentBitPattern = UInt(Double(n).exponentBitPattern)
    }


//method
    public func asDouble() -> Double {
        let floatingPointSign = isNegative ?
          FloatingPointSign.minus:FloatingPointSign.plus
        let d  = Double(sign:floatingPointSign,exponentBitPattern:exponentBitPattern,significandBitPattern:significandBitPattern)
        return d
    }
    
}
// Add your code above

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
print("Checks completed")
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧

