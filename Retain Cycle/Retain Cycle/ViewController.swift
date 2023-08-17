//
//  ViewController.swift
//  Retain Cycle
//
//  Created by BJIT on 16/8/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goToSecondViewController(_ sender: UIButton) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "SecondViewControllerId") as? SecondViewController else { return }
        present(vc, animated: true, completion: nil)
    }

}

