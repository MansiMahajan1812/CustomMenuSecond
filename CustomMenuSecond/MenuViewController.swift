//
//  MenuViewController.swift
//  CustomMenuSecond
//
//  Created by Mansi Mahajan on 7/3/18.
//  Copyright © 2018 Mansi Mahajan. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UITableViewDataSource {

    let imageArray = [#imageLiteral(resourceName: "google+"), #imageLiteral(resourceName: "map"), #imageLiteral(resourceName: "news"), #imageLiteral(resourceName: "camera"), #imageLiteral(resourceName: "search")]
    let titleArray = ["You", "Maps", "News", "Gallery", "Search"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuCellView") as! MenuCellView
        cell.imageSet.image = imageArray[indexPath.row]
        cell.labelSet.text = titleArray[indexPath.row]
        return cell
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
