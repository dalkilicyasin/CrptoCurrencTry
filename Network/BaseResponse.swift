//
//  BaseResponse.swift
//  CrptoCurrencyTry
//
//  Created by Yasin Dalkilic on 4.11.2021.
//
//  Copyright © 2019 OtiHolding. All rights reserved.
//
import ObjectMapper

public class BaseResponse<T:Mappable >:Mappable{
    
    public var token :String?
    public var isSuccess :Bool?
    public var threadGuid :String?
    public var baseMessageList :BaseMessageItem?
    public var dataArray: [T]?
    public var dataObject: T?
    
    public required init?(map: Map) {
        
    }
    
    public func mapping(map: Map) {
        token <- map["Token"]
        isSuccess <- map["IsSuccess"]
        threadGuid <- map["ThreadGuid"]
        baseMessageList <- map["BaseMessage"]
        dataObject <- map["Data"]
        dataArray <- map["Data"]
        
    }
    
    
}


public class GetTokenResponse:Mappable{
    
   public required init?(map: Map) {
        
    }
    
    public func mapping(map: Map) {
        
    }
}
