//
//  ConvertedCurrencyViewController.swift
//  Assignment5
//
//  Created by Brad Payne on 2/14/23.
//

import UIKit

class ConvertedCurrencyViewController: UIViewController {

    @IBOutlet   var ConvertedEUROValueLabel:UILabel!;
    @IBOutlet   var ConvertedGRBValueLabel:UILabel!;
    @IBOutlet   var ConvertedJPYValueLabel:UILabel!;
    @IBOutlet   var ConvertedKRWValueLabel:UILabel!;
    
    @IBOutlet   var ConvertedEUROStackView:UIStackView!;
    @IBOutlet   var ConvertedGRBStackView:UIStackView!;
    @IBOutlet   var ConvertedJPYStackView:UIStackView!;
    @IBOutlet   var ConvertedKRWStackView:UIStackView!;
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
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
