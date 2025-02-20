

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedStrings = ["senior", "hold", "laws", "repealed", "victory"]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:
var array = unsortedStrings

func swap(array: inout[String], firstIndex: Int, secondIndex: Int) {
    let sI = array[secondIndex]
    
    array.remove(at:secondIndex)    
    array.insert(array[firstIndex], at:secondIndex)
    array.remove(at:firstIndex)
    array.insert(sI, at:firstIndex)
}


var pass = 0
var swaps = 0
var tSwaps = 0

print("Pass: \(pass), Swaps: \(swaps)/\(tSwaps), Array: \(array)")

repeat {
    swaps = 0
    for x in 0 ..< array.count - 1 {
        if array[x] > array[x+1] {
            swaps += 1
            tSwaps += 1
            swap(array:&array,firstIndex:x,secondIndex:x+1)
        }
    }
    pass += 1
    print("Pass: \(pass), Swaps: \(swaps)/\(tSwaps), Array: \(array)")
}while swaps != 0 && pass < array.count
