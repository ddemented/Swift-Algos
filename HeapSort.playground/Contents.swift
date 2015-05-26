
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



func heapSort(var arr: [Int]) -> [Int]
{
    heapify(&arr, arr.count)
    
    var end = arr.count - 1
    
    while end > 0 {
        swap(&arr[end], &arr[0])
        siftDown(&arr, 0, end - 1)
        end--
    }
    
    return arr;
}

func heapify(inout arr: [Int], count: Int)
{
    var start = (count - 2) / 2
    
    while start >= 0 {
        siftDown(&arr, start, count - 1)
        start--
    }
}

func siftDown(inout arr: [Int], start: Int, end: Int)
{
    var root = start
    
    while root * 2 + 1 <= end {
        var child = root * 2 + 1
        
        if child + 1 <= end && arr[child] < arr[child + 1] {
            child++
        }
        
        if arr[root] < arr[child] {
            swap(&arr[root], &arr[child])
            root = child
        }
        else {
            return
        }
    }
}


//Main statements implementing the sort algorithm
var a:[Int] = randomArr(100)
heapSort(a)
