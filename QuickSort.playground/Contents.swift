
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


func quickSort(var arr: [Int]) -> [Int]
{
    quickSort(&arr, 0, arr.count - 1)
    return arr;
}

func quickSort(inout arr: [Int], left: Int, right: Int)
{
    var index = partition(&arr, left, right)
    
    if left < index - 1 {
        quickSort(&arr, left, index - 1)
    }
    
    if index < right {
        quickSort(&arr, index, right)
    }
}

func partition(inout arr: [Int], left: Int, right: Int) -> Int
{
    var i = left
    var j = right
    var pivot = arr[(left + right) / 2]
    
    while i <= j {
        while arr[i] < pivot {
            i++
        }
        
        while j > 0 && arr[j] > pivot {
            j--
        }
        
        if i <= j {
            swap(&arr[i], &arr[j])
            i++
            
            if j > 0 {
                j--
            }
        }
    }
    return i
}


//Main statements implementing the sort algorithm
var a:[Int] = randomArr(100)

quickSort(a)
