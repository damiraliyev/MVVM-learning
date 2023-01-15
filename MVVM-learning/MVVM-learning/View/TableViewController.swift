//
//  TableViewController.swift
//  MVVM-learning
//
//  Created by Damir Aliyev on 15.01.2023.
//

import UIKit

class TableViewController: UITableViewController {
    
    var viewModel: TableViewModelType?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = ViewModel()
        
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return viewModel?.numberOfRows ?? 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell
        
        guard let tableViewCell = cell,
        let viewModel = viewModel else { return UITableViewCell() }
            
        let profile = viewModel.profiles[indexPath.row]
        
        tableViewCell.fullNameLabel.text = "\(profile.name) \(profile.secondName)"
        tableViewCell.age.text = String(profile.age)
        
        

        return tableViewCell
    }
}
