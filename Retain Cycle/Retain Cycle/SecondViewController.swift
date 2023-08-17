//
//  SecondViewController.swift
//  Retain Cycle
//
//  Created by BJIT on 16/8/23.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        print("\(self) allocated")
        super.viewDidLoad()
        addTimer()

    }

    deinit{
        print("\(self) deallocated")
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    func printHello(){
        print("Hello")
    }

    func addTimer(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 5.0){ [unowned self] in
            self.printHello()
        }
    }

}
