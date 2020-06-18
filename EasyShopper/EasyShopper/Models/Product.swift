//
//  Product.swift
//  EasyShopper
//
//  Created by Morten Bek Ditlevsen on 11/06/2020.
//  Copyright © 2020 Ka-ching. All rights reserved.
//

import Foundation

struct ProductManager: Decodable {
    var productDataUrl = "https://run.mocky.io/v3/4e23865c-b464-4259-83a3-061aaee400ba"
    
    var bacode: Int
    var costPrice: Int
    var description: String
    var id: String
    var imageUrl: String
    var name: String
    var retailPrice: Int
    #warning("Complete this data structure")
    
    func fetchProduct() {
        let urlString = productDataUrl
        preformRequest(urlString: urlString)
    }
    
    func preformRequest(urlString: String) {
        
    }
    
}
