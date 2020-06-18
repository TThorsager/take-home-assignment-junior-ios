//
//  Product.swift
//  EasyShopper
//
//  Created by Morten Bek Ditlevsen on 11/06/2020.
//  Copyright © 2020 Ka-ching. All rights reserved.
//

import Foundation

struct Prodcuts: Decodable {
    let products: [Product]
}

struct Product: Decodable {
    var id: String?
    var image_url: URL?
    var name: String?
    var retail_price: Int?
    
}

