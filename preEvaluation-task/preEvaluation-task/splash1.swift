//
//  splash1.swift
//  preEvaluation-task
//
//  Created by Vivek Patel on 03/07/23.
//

import UIKit

class splash1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0){
            // Nviagte to spash Screen 2
            
            let vc2 = self.storyboard?.instantiateViewController(withIdentifier: "spash2") as! spash2
            self.navigationController?.pushViewController(vc2, animated: false)
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
