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
    
    
    init()
    {
        //  Set initial amount to 0
        self.USDAmount = 0;
        
        //  I need to read in the currency conversion rates here
        //  Do I want to use a Dictionary
        
        let ConversionRates = ConversionRates();
    }
    
    private func    convertWithConversionRate(rate:Double) -> Double
    {
        
        return Double(self.USDAmount) * rate;
        
    }
    
    
    func convertEURO(USD:Int) -> Double
    {
        return self.convertWithConversionRate(rate: ConversionRates().Euro.Rate);
    }
    
    
    func convertGPB(USD:Int) -> Double
    {
        return self.convertWithConversionRate(rate: ConversionRates().GPB.Rate);
    }
    
    
    func convertJPY(USD:Int) -> Double
    {
        return self.convertWithConversionRate(rate: ConversionRates().JPY.Rate);
    }
    
    func convertKRW(USD:Int) -> Double
    {
        return self.convertWithConversionRate(rate: ConversionRates().KRW.Rate);
    }
    
    
    
    
}
