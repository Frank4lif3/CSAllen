// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedStrings = ["senior", "hold", "laws", "repealed", "victory"]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:
var array = unsortedStrings

func swap (array: inout[String], fIndex:Int, sIndex:Int) {
    let fI = array[fIndex]
    let sI = array[sIndex]
        
    array.remove(at:fIndex)
    array.insert(sI, at:fIndex)
    array.remove(at:sIndex)
    array.insert(fI, at:sIndex)

}

var smallSelect = 0

//swap = 0 can be put into the loop so doesnt have to += 0 
var swap = 0
var tSwap = 0
var didSwap = false
var next = 0

for pass in 0 ..< array.count {
    smallSelect = pass
    print("Pass: \(pass), Swaps: \(swap)/\(tSwap), Array: \(array)")
    swap = 0
    repeat {
        if array[smallSelect] > array[next] {
//            print("\(array[smallSelect]), \(array[next])")
            smallSelect = next
            didSwap = true
        }
        next += 1
    } while next != array.count
    next = pass + 1
    
    if didSwap == true {
        swap(array:&array, fIndex:pass, sIndex:smallSelect)
    }
        didSwap = false
    swap += 1
    tSwap += 1
}



/*
func selection() {
    var select = pass
    repeat {
        for index in pass ..< array.count { 
            if array[index] < array[select] {
                select = array
            }
            swap(array:&array, fI:pass, sI:select)
    } while noSwap == false
}


 */
