//
//  BasketViewController.swift
//  EasyShopper
//
//  Created by Morten Bek Ditlevsen on 11/06/2020.
//  Copyright © 2020 Ka-ching. All rights reserved.
//

import UIKit

#warning("""
The initial viewcontroller should show the shopping basket.
It should contain a 'Plus' button for adding new items to the basket.
It should contain a 'Clear' button for removing all items in the basket.
""")

class BasketViewController: UITableViewController {
    
    var basket = [Product]()
    
    
    @IBAction func clearContentOfBasket(_ sender: UIBarButtonItem) {
        basket = []
    }
    
    @IBOutlet weak var basketTableView: UITableView!
    
class BasketViewController: UIViewController {

    @IBOutlet weak var sumOfPriceLabel: UILabel!
    @IBOutlet weak var basketTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        basketTableView.delegate = self
        basketTableView.dataSource = self

    }
}
