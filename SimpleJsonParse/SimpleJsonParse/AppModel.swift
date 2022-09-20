//
//  AppModel.swift
//  SimpleJsonParse
//
//  Created by Berkant on 26.07.2022.
//

import Foundation
import SwiftyJSON

final class AppModel {
    
    var name : String
    var name1 : String
    var name2 : String
    var name3 : String
    var name4 : String
    var wikiDataId : String
    var wikiDataId1 : String
    var wikiDataId2 : String
    var wikiDataId3 : String
    var wikiDataId4 : String
    var currenyCode : String
    var currenyCode1 : String
    var currenyCode2 : String
    var currenyCode3 : String
    var currenyCode4 : String
    var countryCode: String
    var countryCode1: String
    var countryCode2: String
    var countryCode3: String
    var countryCode4: String
    
    
    init(withJSON json: JSON) {
        name = json["data"][0]["name"].stringValue
        name1 = json["data"][1]["name"].stringValue
        name2 = json["data"][2]["name"].stringValue
        name3 = json["data"][3]["name"].stringValue
        name4 = json["data"][4]["name"].stringValue
        wikiDataId = json["data"][0]["wikiDataId"].stringValue
        wikiDataId1 = json["data"][1]["wikiDataId"].stringValue
        wikiDataId2 = json["data"][2]["wikiDataId"].stringValue
        wikiDataId3 = json["data"][3]["wikiDataId"].stringValue
        wikiDataId4 = json["data"][4]["wikiDataId"].stringValue
        currenyCode = json["data"][0]["currencyCodes"][0].stringValue
        currenyCode1 = json["data"][1]["currencyCodes"][0].stringValue
        currenyCode2 = json["data"][2]["currencyCodes"][0].stringValue
        currenyCode3 = json["data"][3]["currencyCodes"][0].stringValue
        currenyCode4 = json["data"][4]["currencyCodes"][0].stringValue
        countryCode = json["data"][0]["code"].stringValue
        countryCode1 = json["data"][1]["code"].stringValue
        countryCode2 = json["data"][2]["code"].stringValue
        countryCode3 = json["data"][3]["code"].stringValue
        countryCode4 = json["data"][4]["code"].stringValue
        
    }
    
}
