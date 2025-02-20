// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = [5, 1, 4, 2, 8]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:
var sorted = unsortedIntegers

func swap (integers: inout[Int], fIndex:Int, sIndex:Int) {
    let fI = integers[fIndex]
    let sI = integers[sIndex]
        
    integers.remove(at:fIndex)
    integers.insert(sI, at:fIndex)
    integers.remove(at:sIndex)
    integers.insert(fI, at:sIndex)
}

var smallSelect = 0

//swap = 0 can be put into the loop so doesnt have to += 0 
var swap = 0
var tSwap = 0
for pass in 0 ..< sorted.count {
    var next = pass
    var smallSelect = pass
    print("Pass: \(pass), Swaps: \(swap)/\(tSwap), Array: \(sorted)")
    swap = 0
    repeat {
        if sorted[smallSelect] > sorted[next] {
            smallSelect = next            
        }
        next += 1
    } while next != sorted.count

    if smallSelect != pass {
        swap(integers:&sorted, fIndex:pass, sIndex:smallSelect)
    }
    swap += 1
    tSwap += 1
}


/*
var smallSelect = 0
var swap = 0
var tSwap = 0

for pass in 0 ..< sorted.count {
    smallSelect = pass
    print("Pass: \(pass), Swaps: \(swap)/\(tSwap), Array: \(sorted)")
    swap = 0
    for next in pass ..< sorted.count {
        if sorted[smallSelect] > sorted[next] {
            smallSelect = next
            print(smallSelect)
            
        }
        swap(integers:&sorted, fIndex:pass, sIndex:smallSelect)
    }

//    print(smallSelect)
    tSwap += 1
    swap += 1

}

*/

