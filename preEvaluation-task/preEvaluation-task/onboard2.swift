//
//  onboard2.swift
//  preEvaluation-task
//
//  Created by Vivek Patel on 03/07/23.
//

import UIKit

class onboard2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func skipButton(_ sender: Any) {
        let ViewController = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.navigationController?.pushViewController(ViewController, animated: false)
        
    }
    
    @IBAction func nextButton(_ sender: Any) {
        let onboard3 = self.storyboard?.instantiateViewController(withIdentifier: "onboard3") as! onboard3
        self.navigationController?.pushViewController(onboard3, animated: false)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
