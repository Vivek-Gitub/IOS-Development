//
//  Onboard.swift
//  preEvaluation-task
//
//  Created by Vivek Patel on 03/07/23.
//

import UIKit



class Onboard: UIViewController {

    @IBOutlet weak var imageScroll: UIImageView!
    @IBOutlet weak var nextButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.imageScroll.layer.cornerRadius = 4
        self.nextButton.layer.cornerRadius = 8
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func skipOnboard(_ sender: Any) {
        let ViewController = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.navigationController?.pushViewController(ViewController, animated: false)
    }
    
    
    @IBAction func nextButton(_ sender: Any) {
        let onboard2 = self.storyboard?.instantiateViewController(withIdentifier: "onboard2") as! onboard2
        self.navigationController?.pushViewController(onboard2, animated: false)
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
