//
//  TableViewController.swift
//  MVVM-learning
//
//  Created by Damir Aliyev on 15.01.2023.
//

import UIKit

class TableViewController: UITableViewController {
    
    private var viewModel: TableViewViewModelType?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = ViewModel()
        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return viewModel?.numberOfRows() ?? 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell
        
        guard let tableViewCell = cell,
        let viewModel = viewModel else { return UITableViewCell() }
        
        let cellViewModel = viewModel.cellViewModel(forIndexPath: indexPath)
        
        tableViewCell.viewModel = cellViewModel
        
        return tableViewCell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let viewModel = viewModel else {
            return
        }
        viewModel.selectRow(atIndextPath: indexPath)
        
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier, let viewModel = viewModel else { return }
        
        if identifier == "detailSegue" {
            if let destVC = segue.destination as? DetailViewController {
                destVC.viewModel = viewModel.viewModelForSelectedRow()
            }
        }
    }
}
