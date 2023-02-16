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

    func    validateUSDValueEntry() -> Bool
    {
        
        
        let USDInputValue:String = self.USDInput.text ?? ""
        
        if( self.USDInput.text! == "")
        {
            //  If nothing is entered than we need to display this Error
            let errorMessageAlert = UIAlertController(title: "Attention", message: "Please enter an USD value to convert", preferredStyle: .alert)
            let OKAlertButton = UIAlertAction(title: "OK", style: .cancel, handler:{ (action) -> Void in})
            errorMessageAlert.addAction(OKAlertButton)
            self.present(errorMessageAlert, animated: true, completion: nil)

            //  Since we do not have a valid input tell the view we should not segue due to bad inputs
            return false;
        }
        
        if( Int(USDInputValue) == nil )
        {
            //  If nothing is entered than we need to display this Error
            let errorMessageAlert = UIAlertController(title: "Attention", message: "Please do not enter a decimal amount.  Please enter a valid number", preferredStyle: .alert)
            let OKAlertButton = UIAlertAction(title: "OK", style: .cancel, handler:{ (action) -> Void in})
            errorMessageAlert.addAction(OKAlertButton)
            self.present(errorMessageAlert, animated: true, completion: nil)

            //  Since we do not have a valid input tell the view we should not segue due to bad inputs
            return false;
        }
        
        
        return true;
    }
    
    
    override    func    shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool
    {
        return validateUSDValueEntry();
        
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) 
    {
        //  I'll need this later, but being lazy right now and not dealing with this
        //let indetifier:String = "Conversion Segue"
   
        if(segue.identifier == "Conversion Segue" )
        {

            let convertedCurrencyViewController = segue.destination as! ConvertedCurrencyViewController
                        
    
            //  Let's set up the conversions
            let CurrencyConverter:CurrencyConverter = CurrencyConverter();
       
                
            //  I need to do some checks to see if this value is even correct in the field.  For now let's get it to work
            let USDValue:Int = Int(self.USDInput.text!)!;
            
            convertedCurrencyViewController.USDAmountValue = String(format:"$%d", USDValue);
            CurrencyConverter.USDAmount = USDValue;
            
            
            //  Set the rates for the values with the converted rates
            if( self.EuroSwitch.isOn == true )
            {
                //  Set the label on the next view
                convertedCurrencyViewController.convertedEUROValue = String(format: "€%.2f", CurrencyConverter.convertEURO())
            }
            
            if( self.GPBSwitch.isOn == true )
            {
                //  Set the label on the next view
                convertedCurrencyViewController.convertedGRBValue = String(format: "£%.2f", CurrencyConverter.convertGPB())
            }
            
            if( self.JPYSwitch.isOn == true )
            {
                //  Set the label on the next view
                convertedCurrencyViewController.convertedJPYValue = String(format: "¥%.2f", CurrencyConverter.convertJPY())
            }
            
            if( self.KRWSwitch.isOn == true )
            {
                //  Set the label on the next view
                convertedCurrencyViewController.convertedKRWValue = String(format: "₩%.2f", CurrencyConverter.convertKRW())
            }
                
           
        }
      
        
        


                
    }

}

