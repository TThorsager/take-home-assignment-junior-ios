//
//  ProductManager.swift
//  EasyShopper
//
//  Created by Thomas Thorsager on 18/06/2020.
//  Copyright © 2020 Ka-ching. All rights reserved.
//

import Foundation

struct ProductManager {
    var productDataUrl = "https://run.mocky.io/v3/4e23865c-b464-4259-83a3-061aaee400ba"
    
    func fetchProduct() {
        let urlString = productDataUrl
        preformRequest(urlString: urlString)
    }
    
    func preformRequest(urlString: String) {
        if let url = URL(string: urlString) {
            
            let urlSession = URLSession(configuration: .default)
            
            let task = urlSession.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    print(error!)
                    return
                }
                
                if let safeData = data {
                    self.parseJSON(productData: safeData)
                }
            }
            
            task.resume()
        }
    }
    
    func parseJSON(productData: Data) {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(Product.self, from: productData)
            print(decodedData)
        } catch {
            print(error.localizedDescription)
        }
        
    }
}
