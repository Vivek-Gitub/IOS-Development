//
//  onboard3.swift
//  preEvaluation-task
//
//  Created by Vivek Patel on 03/07/23.
//

import UIKit

class onboard3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func skipButton(_ sender: Any) {
        let ViewController = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.navigationController?.pushViewController(ViewController, animated: false)
    }
    
    
    @IBAction func nextButton(_ sender: Any) {
        
        let ViewController = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.navigationController?.pushViewController(ViewController, animated: false)
    }
    
}
