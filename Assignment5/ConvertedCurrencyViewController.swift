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
    
    var convertedEUROValue:String? = nil;
    var convertedGRBValue:String? = nil;
    var convertedJPYValue:String? = nil;
    var convertedKRWValue:String? = nil;
    
    
    override func viewDidLoad()
    {
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        
        if( convertedEUROValue != nil )
        {
            ConvertedEUROValueLabel.text = convertedEUROValue;
        }
        
        else
        {
            ConvertedEUROStackView.isHidden = true;
        }
        
        
        if( convertedGRBValue != nil )
        {
            ConvertedGRBValueLabel.text = convertedGRBValue;
        }
        
        else
        {
            ConvertedGRBStackView.isHidden = true;
        }
        
        if( convertedJPYValue != nil )
        {
            ConvertedJPYValueLabel.text = convertedJPYValue;
        }
        
        else
        {
            ConvertedJPYStackView.isHidden = true;
        }
        
        if( convertedKRWValue != nil )
        {
            ConvertedKRWValueLabel.text = convertedKRWValue;
        }
        
        else
        {
            ConvertedKRWStackView.isHidden = true;
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
