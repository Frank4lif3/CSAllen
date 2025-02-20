import Foundation

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = [38, 27, 43, 3, 9, 82, 10]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:

print("Array: \(unsortedIntegers)")

func mergeSort(_ array: [Int]) -> [Int] {
    guard array.count > 1 else { return array }
    
    let mid = Int(ceil(Double(array.count)/2))
    
    var leftArray = (Array(array[0..<mid]))
    print("Array: \(leftArray)")
    leftArray = mergeSort(leftArray)

    var rightArray = (Array(array[mid..<array.count]))
    print("Array: \(rightArray)")
    rightArray = mergeSort(rightArray)

    print("Array: \(merge(leftArray, rightArray))")

    return merge(leftArray, rightArray)
}

func merge(_ leftArray:[Int], _ rightArray:[Int]) -> [Int] {
    var lS = 0
    var rS = 0

    var temp : [Int] = []

    while lS < leftArray.count && rS < rightArray.count {
        if leftArray[lS] < rightArray[rS] {            
        temp.append(leftArray[lS])
        lS += 1
        }
        else if rightArray[rS] < leftArray[lS] {
            temp.append(rightArray[rS])
            rS += 1
        }
        else {
            temp.append(leftArray[lS])
            lS += 1
            temp.append(rightArray[rS])
            rS += 1
        }        
    }
    while lS < leftArray.count {
        temp.append(leftArray[lS])
        lS += 1
    }
    while rS < rightArray.count {
        temp.append(rightArray[rS])
        rS += 1
    }

    return temp
}

let _ = mergeSort(unsortedIntegers)
