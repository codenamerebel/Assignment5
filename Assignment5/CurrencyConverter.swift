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
        
        let ConversionRatesPath:String = Bundle.main.path(forResource: "ConversionRates", ofType:"pList")!;
        let ConversionDictrionary:NSDictionary = NSDictionary(contentsOfFile: ConversionRatesPath)!;
        
        
        
    }
    
    private func    convertWithConversionRate(rate:Double) -> Double
    {
        
        return Double(self.USDAmount) * rate;
        
    }
    
    
    func convertCurrency1(USD:Int) -> Double
    {
        return self.convertWithConversionRate(rate:132);
    }
    
    
    func convertCurrency2(USD:Int) -> Double
    {
        return self.convertWithConversionRate(rate:132);
    }
    
    
    func convertCurrency3(USD:Int) -> Double
    {
        return self.convertWithConversionRate(rate:132);
    }
    
    func convertCurrency4(USD:Int) -> Double
    {
        return self.convertWithConversionRate(rate:132);
    }
    
    
    
    
}
