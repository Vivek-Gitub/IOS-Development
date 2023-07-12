//
//  splash3.swift
//  preEvaluation-task
//
//  Created by Vivek Patel on 03/07/23.
//

import UIKit

class splash3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0){
            // Nviagte to spash Home Screen
            
            let onboardScreen = self.storyboard?.instantiateViewController(withIdentifier: "Onboard") as! Onboard
            self.navigationController?.pushViewController(onboardScreen, animated: false)
        }
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
