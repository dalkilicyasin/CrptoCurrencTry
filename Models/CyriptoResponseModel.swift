//
//  CyriptoResponseModel.swift
//  CrptoCurrencyTry
//
//  Created by Yasin Dalkilic on 8.11.2021.
//

import Foundation
import ObjectMapper

struct CyriptoResponseModel : Mappable {
    var asset_id : String?
    var name : String?
    var type_is_crypto : Int?
    var data_quote_start : String?
    var data_quote_end : String?
    var data_trade_start : String?
    var data_trade_end : String?
    var data_symbols_count : Int?
    var volume_1hrs_usd : Double?
    var volume_1day_usd : Double?
    var volume_1mth_usd : Double?
    var price_usd : Double?
    var data_start : String?
    var data_end : String?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

        asset_id <- map["asset_id"]
        name <- map["name"]
        type_is_crypto <- map["type_is_crypto"]
        data_quote_start <- map["data_quote_start"]
        data_quote_end <- map["data_quote_end"]
        data_trade_start <- map["data_trade_start"]
        data_trade_end <- map["data_trade_end"]
        data_symbols_count <- map["data_symbols_count"]
        volume_1hrs_usd <- map["volume_1hrs_usd"]
        volume_1day_usd <- map["volume_1day_usd"]
        volume_1mth_usd <- map["volume_1mth_usd"]
        price_usd <- map["price_usd"]
        data_start <- map["data_start"]
        data_end <- map["data_end"]
    }

}
