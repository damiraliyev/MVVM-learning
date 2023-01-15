//
//  TableViewCell.swift
//  MVVM-learning
//
//  Created by Damir Aliyev on 15.01.2023.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    weak var viewModel: TableViewСellViewModelType? {
        willSet(viewModel) {
            guard let viewModel = viewModel else {
                return
            }
            
            fullNameLabel.text = viewModel.fullName
            ageLabel.text = viewModel.age
        }
    }

}
