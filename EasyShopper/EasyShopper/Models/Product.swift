//
//  Product.swift
//  EasyShopper
//
//  Created by Morten Bek Ditlevsen on 11/06/2020.
//  Copyright © 2020 Ka-ching. All rights reserved.
//

import Foundation

struct Product: Decodable {
    var bacode: Int
    var costPrice: Int
    var description: String
    var id: String
    var imageUrl: String
    var name: String
    var retailPrice: Int
    #warning("Complete this data structure")
}
