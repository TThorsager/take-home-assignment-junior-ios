//
//  BasketViewController.swift
//  EasyShopper
//
//  Created by Morten Bek Ditlevsen on 11/06/2020.
//  Copyright © 2020 Ka-ching. All rights reserved.
//

import UIKit

#warning("The initial viewcontroller should show the shopping basket.")

class BasketViewController: UIViewController {
        
    var basket = [Product]()
    
    @IBOutlet weak var sumOfPriceLabel: UILabel!
    @IBOutlet weak var basketTableView: UITableView!
    
    @IBAction func clearContentOfBasket(_ sender: UIBarButtonItem) {
        basket = []
        sumOfPriceLabel.text = "0"
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        sumOfPriceLabel.text = "0"
        
    }
}
