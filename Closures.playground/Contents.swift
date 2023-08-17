import UIKit

class TestClosure{
    func performAddition(){
        print("Step1")
        add(7,andNumber2: 2){
            result in
            sample()
            print(result)
        }
        print("Final Step")
    }

    func performSubtraction(){
        print("Step1")
        sub(7,andNumber2: 2){[weak self]
            result in
            self?.sample()
            print(result)
        }
        print("Final Step")
    }

    func sample(){
        print("Sample")
    }


    func sub(_ num1: Int, andNumber2 num2: Int, completionHandler: @escaping(_ result: Int) -> Void ){
        print("Step2")
        let total = num1 - num2
        DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
            print("Step3")
            completionHandler(total)
        }
        print("Step4")
    }

    func add(_ num1: Int, andNumber2 num2: Int, completionHandler: (_ result: Int) -> Void ){
        print("Step2")
        let sum = num1 + num2
        print("Step3")
        completionHandler(sum)
        print("Step4")
    }
}

let testClosure = TestClosure()
testClosure.performSubtraction()
