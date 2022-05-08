//
//  BaseMassageItem.swift
//  CrptoCurrencyTry
//
//  Created by Yasin Dalkilic on 4.11.2021.
//

import ObjectMapper

public class BaseMessageItem:Mappable{
    
    public var type = ""
    public var code = 0
    public var message = ""
    public var stackTrace = ""
    
    
   public required init?(map: Map) {
        
    }
    
   public func mapping(map: Map) {
        type <- map["Type"]
        code <- map["Code"]
        message <- map["Message"]
        stackTrace <- map["StackTrace"]
    }
}
