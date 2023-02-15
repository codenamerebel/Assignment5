//
//  ConversionRates.swift
//  Assignment5
//
//  Created by Brad Payne on 2/14/23.
//

import Foundation


class ConversionRates
{
    let Euro = (Currency:"EURO", Rate:0.94);
    let GPB = (Currency:"GPB", Rate:0.83);
    let JPY = (Currency:"JPY", Rate:134.31);
    let KRW = (Currency:"KRW", Rate:1288.43);
    
    func returnAllCurrencyRates() -> Array<Any>
    {
        return [Euro, GPB, JPY, KRW];
    }
    
    func printDisclaimer()
    {
        print("All conversion rates refelct the rates on 2/15/2023.  Actual rate will vary")
    }
    
    
}
