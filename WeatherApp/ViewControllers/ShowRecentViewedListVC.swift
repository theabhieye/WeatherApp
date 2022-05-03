//
//  ShowRecentViewedListVC.swift
//  WeatherApp
//
//  Created by Abhishek kapoor on 03/05/22.
//

import UIKit

class ShowRecentViewedListVC: UIViewController {
  
    @IBOutlet weak var recentsTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        recentsTableView.delegate = self
        recentsTableView.dataSource = self
        // Do any additional setup after loading the view.
    }

}

extension ShowRecentViewedListVC:tableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "RecentlyViewedTableViewCell") as? RecentlyViewedTableViewCell else{
            return UITableViewCell()
        }
        cell.setUp(temprature: "sdf", cityName: "asdfas")
        
        return cell
    }
    
}
