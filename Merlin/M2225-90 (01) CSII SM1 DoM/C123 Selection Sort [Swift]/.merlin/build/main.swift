

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedStrings = ["scissors", "instrument", "colour", "ossified", "debt", "elfin", "puzzling", "reach", "decay"]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:

var new = unsortedStrings

func swap(strings:inout [String], firstIndex:Int,secondIndex:Int) {
    let f = strings[firstIndex]
    let s = strings[secondIndex]
    
    strings.remove(at:firstIndex)
    strings.insert(s, at:firstIndex)
    strings.remove(at:secondIndex)
    strings.insert(f, at:secondIndex)
}

var small = 0
var swap = 0
var tSwap = 0

for pass in 0 ..< new.count {
    var next = pass
    var small = pass
    print("Pass: \(pass), Swaps: \(swap)/\(tSwap), Array: \(new)")
    swap = 0
    repeat {
        if new[small] > new[next] {
           small = next
        }
        next += 1
    } while next != new.count

    if small != pass {
        swap(strings:&new, firstIndex:pass, secondIndex: small)
    }
    swap += 1
    tSwap += 1
}
