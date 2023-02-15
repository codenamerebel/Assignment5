//
//  ViewController.swift
//  Assignment5
//
//  Created by Brad Payne on 2/9/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet   var EuroSwitch:UISwitch!;
    @IBOutlet   var GPBSwitch:UISwitch!;
    @IBOutlet   var JPYSwitch:UISwitch!;
    @IBOutlet   var KRWSwitch:UISwitch!;
    @IBOutlet   var USDInput:UITextField!;
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) 
    {
        //  I'll need this later, but being lazy right now and not dealing with this
        //let indetifier:String = "Conversion Segue"
   
        if(segue.identifier == "Conversion Segue" )
        {

            var convertedCurrencyViewController = segue.destination as! ConvertedCurrencyViewController
                        
            
            
            print(convertedCurrencyViewController.debugDescription)
            
        }
      
        
        
        //  Let's set up the conversions
        let CurrencyConverter:CurrencyConverter = CurrencyConverter();
   
            
        //  I need to do some checks to see if this value is even correct in the field.  For now let's get it to work
        var USDValue:Int = Int(self.USDInput.text!)!;
        CurrencyConverter.USDAmount = USDValue;
        
        
        if( self.EuroSwitch.isOn == true )
        {
            //  Set the label on the next view
            //  Hide view if it is not switched on
            print(CurrencyConverter.convertEURO())
        }
        
        else
        {
            //  Hide the stackview for this currency
        }
        
        if( self.GPBSwitch.isOn == true )
        {
            print(CurrencyConverter.convertGPB())
        }
        
        else
        {
            //  Hide the stackview for this currency
        }
        
        if( self.JPYSwitch.isOn == true )
        {
            print(CurrencyConverter.convertJPY());
        }
        
        else
        {
            //  Hide the stackview for this currency
        }
        
        if( self.KRWSwitch.isOn == true )
        {
            print(CurrencyConverter.convertKRW())
        }
            
        else
        {
            //  Hide the stackview for this currency
        }
                
    }
@IBAction func test()
    {
        self.performSegue(withIdentifier: "Conversion Segue", sender: self)
    }
}

