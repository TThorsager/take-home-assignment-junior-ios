//
//  ProductTableViewController.swift
//  EasyShopper
//
//  Created by Thomas Thorsager on 17/06/2020.
//  Copyright © 2020 Ka-ching. All rights reserved.
//

import UIKit

class ProductTableViewController: UITableViewController {

    var productManager = ProductManager()
    var products = [Product]()
    
    @IBOutlet var productTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productManager.fetchProduct()
        
        productTableView.delegate = self
        productTableView.dataSource = self
       
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return products.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "productCell", for: indexPath)

        

        return cell
    }
    

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
