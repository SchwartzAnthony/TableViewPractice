//
//  ViewController.swift
//  TableViewPractice
//
//  Created by Anthony Schwartz on 6/11/18.
//  Copyright © 2018 Anthony Schwartz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var restaurantNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocoloate", "Palomino Espresso", "Upstate", "Tarif", "Graham Avenue Meats And Deli", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Cofessional", "Barrafina", "Donostia", "Royal Oak", "CASK Pub and Kitchen" ]
    
    var restaurantImages = ["barrafina.jpg","bourkestreetbakery.jpg","cafedeadend.jpg","cafeloisl.jpg","caskpubkitchen.jpg","confessional.jpg","donostia.jpg","fiveleaves.jpg","forkeerestaurant.jpg","grahamavenuemeats.jpg","haighschocolate.jpg","homei.jpg","palominoespresso.jpg","petiteoyster.jpg","posatelier.jpg","royaloak.jpg","teakha.jpg","traif.jpg","upstate.jpg","wafflewolf.jpg"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return min(restaurantNames.count, restaurantImages.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        
        cell.textLabel?.text = restaurantNames[indexPath.row]
        cell.imageView?.image = UIImage(named: restaurantImages[indexPath.row])
        
        //cell.imageView?.image = UIImage(named: restaurantNames)[indexPath.row]
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }

}

