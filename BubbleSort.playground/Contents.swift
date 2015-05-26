//: Playground - noun: a place where people can play

//Swift BubbleSort Function Taking Array as input
import Darwin

//inout keyword to modify original passed value itself
func BubbleSort(inout a: [Int])->[Int] {
    
    var length = a.count
    var i:Int
    var j:Int
    
    for i in 0...length-1 {
        for j in 0...i {
            if a[j] > a[i] {
                swap(&a[i], &a[j])
            }
        }
    }
    
    return a
}

//Random Func to generate array of length x
func randomArr(x:Int) ->[Int] {
    var arr = [Int](count: x, repeatedValue: 0)
    
    var i:Int
    
    for i in 0...x-1 {
            arr[i] = Int(arc4random_uniform(UInt32(x)))
    }
    
    return arr
}

//Main statements implementing the sort algorithm
var a:[Int] = randomArr(100)


BubbleSort(&a)




