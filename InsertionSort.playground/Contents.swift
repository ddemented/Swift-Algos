
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


func InsSort(inout arr: [Int]) -> [Int] {
    
    var key:Int
    
    for i in 1...arr.count-1 {
        var j:Int = i
        while (j > 0) && (arr[j-1] > a[j]) {
            swap(&arr[j], &arr[j-1])
            j = j-1
        }
    }
    
    return arr
}

//Main statements implementing the sort algorithm
var a:[Int] = randomArr(100)


InsSort(&a)
