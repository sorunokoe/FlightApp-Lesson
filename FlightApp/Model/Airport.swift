//
//  Airport.swift
//  FlightApp
//
//  Created by Mac on 21.06.2018.
//  Copyright © 2018 salgara. All rights reserved.
//

import Unbox

struct Airport{
    var title: String?
    var description: String?
}
extension Airport: Unboxable {
    init(unboxer: Unboxer) throws {
        self.title = try unboxer.unbox(key: "title")
        self.description = try unboxer.unbox(key: "description")
    }
}
