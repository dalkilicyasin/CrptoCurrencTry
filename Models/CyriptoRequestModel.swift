//
//  CyriptoRequestModel.swift
//  CrptoCurrencyTry
//
//  Created by Yasin Dalkilic on 8.11.2021.
//

import Foundation
import UIKit
import ObjectMapper

public class  CyriptoRequestModel : Mappable{
    public var apikey : String!
    
    public required init?(map: Map) {
        
    }
    
    public init( apikey : String) {
        self.apikey = apikey
    }
    
    public func mapping(map: Map) {
    }
    
    public func requestPathString()->String{
        // 2. parametre eklemek için & işareti koy
        return "?apikey=\(self.apikey ?? "")"
    }
}
