
//Swift BubbleSort Function Taking Array as input
import Darwin
//Random Func to generate array of length x
func randomArr(x:Int) ->[Int] {
    var arr = [Int](count: x, repeatedValue: 0)
    
    var i:Int
    
    for i in 0...x-1 {
        arr[i] = Int(arc4random_uniform(UInt32(x)))
    }
    
    return arr
}

func sort(inout arr:[Int]) -> [Int] {
    var minIndex = 0
    
    for i in 0..<arr.count {
        minIndex = i
        
        for j in (i + 1)..<arr.count {
            if arr[j] < arr[minIndex] {
                minIndex = j
            }
        }
        
        if (minIndex != i) {
            swap(&arr[i], &arr[minIndex])
        }
    }
    return arr;
}

//Main statements implementing the sort algorithm
var a:[Int] = randomArr(100)

sort(&a)








