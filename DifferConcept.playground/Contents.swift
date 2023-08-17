import UIKit


func differTest(){
    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
        print("Test5")
    }
    print("Test1")
    defer {
        print("Test2")
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            print("Test6")
        }
        defer{
            print("Test7")
        }
    }
    print("Test3")
    defer{
        defer{
            print("Test8")
        }
        print("Test4")
    }
}

differTest()
