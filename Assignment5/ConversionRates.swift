//
//  ConversionRates.swift
//  Assignment5
//
//  Created by Brad Payne on 2/14/23.
//

import Foundation


class ConversionRates
{
    let Euro = (Currency:"EURO", Rate:1.23);
    let GPB = (Currency:"GPB", Rate:1.23);
    let JPY = (Currency:"JPY", Rate:1.23);
    let KRW = (Currency:"KRW", Rate:1.23);
    
    func returnAllCurrencyRates() -> Array<Any>
    {
        return [Euro, GPB, JPY, KRW];
    }
    
}
