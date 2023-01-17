//
//  PresetClass.swift
//  SUPER NANIO MAKER REMAKE
//
//  Created by clark on R 4/12/13.
//

import UIKit

class presetdate: Codable{
    var prerule1: String!    //ルール
    var prerule2: String!
    var prerule3: String!
    var prerule4: String!
    var prerule5: String!
    var prerule6: String!
    
    var predetail1: String!  //詳細
    var predetail2: String!
    var predetail3: String!
    var predetail4: String!
    var predetail5: String!
    var predetail6: String!
    
    init(prerule1: String, predetail1: String,prerule2: String, predetail2: String,prerule3: String, predetail3: String,prerule4: String, predetail4: String,prerule5: String, predetail5: String,prerule6: String, predetail6: String) {
        self.prerule1 = prerule1
        self.predetail1 = predetail1
        self.prerule2 = prerule2
        self.predetail2 = predetail2
        self.prerule3 = prerule3
        self.predetail3 = predetail3
        self.prerule4 = prerule4
        self.predetail4 = predetail4
        self.prerule5 = prerule5
        self.predetail5 = predetail5
        self.prerule6 = prerule6
        self.predetail6 = predetail6
    }
}
