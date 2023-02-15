//
//  CurrencyConverter.swift
//  Assignment5
//
//  Created by Brad Payne on 2/12/23.
//
//
//      All Conversion rates are accurate as of ENTER DATE HERE
//
//
//
import Foundation

class   CurrencyConverter
{
    
    var USDAmount:Int;
    let ConversionRates:ConversionRates;
    
    
    init()
    {
        //  Set initial amount to 0
        self.USDAmount = 0;
        
        //  I need to read in the currency conversion rates here
        //  Do I want to use a Dictionary
        
        //  Why did it request this?  I'm not totally sure.   Will investigate later
        ConversionRates = Assignment5.ConversionRates();
    }
    
    private func    convertWithConversionRate(rate:Double) -> Double
    {
        
        return Double(self.USDAmount) * rate;
        
    }
    
    
    func convertEURO() -> Double
    {
        return self.convertWithConversionRate(rate: ConversionRates.Euro.Rate);
    }
    
    
    func convertGPB() -> Double
    {
        return self.convertWithConversionRate(rate: ConversionRates.GPB.Rate);
    }
    
    
    func convertJPY() -> Double
    {
        return self.convertWithConversionRate(rate: ConversionRates.JPY.Rate);
    }
    
    func convertKRW() -> Double
    {
        return self.convertWithConversionRate(rate: ConversionRates.KRW.Rate);
    }
    
    
    
    
}
