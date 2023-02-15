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
    @IBOutlet   var USDAmountValueLabel:UILabel!;
    
    @IBOutlet   var ConvertedEUROStackView:UIStackView!;
    @IBOutlet   var ConvertedGRBStackView:UIStackView!;
    @IBOutlet   var ConvertedJPYStackView:UIStackView!;
    @IBOutlet   var ConvertedKRWStackView:UIStackView!;
    
    var convertedEUROValue:String? = nil;
    var convertedGRBValue:String? = nil;
    var convertedJPYValue:String? = nil;
    var convertedKRWValue:String? = nil;
    
    var USDAmountValue:String! = "0";
    
    
    override func viewDidLoad()
    {
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.USDAmountValueLabel.text = USDAmountValue;
        
        
        if( self.convertedEUROValue != nil )
        {
            self.ConvertedEUROValueLabel.text = convertedEUROValue;
        }
        
        else
        {
            self.ConvertedEUROStackView.isHidden = true;
        }
        
        
        if( self.convertedGRBValue != nil )
        {
            self.ConvertedGRBValueLabel.text = convertedGRBValue;
        }
        
        else
        {
            self.ConvertedGRBStackView.isHidden = true;
        }
        
        if( self.convertedJPYValue != nil )
        {
            self.ConvertedJPYValueLabel.text = convertedJPYValue;
        }
        
        else
        {
            self.ConvertedJPYStackView.isHidden = true;
        }
        
        if( self.convertedKRWValue != nil )
        {
            self.ConvertedKRWValueLabel.text = convertedKRWValue;
        }
        
        else
        {
            self.ConvertedKRWStackView.isHidden = true;
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
