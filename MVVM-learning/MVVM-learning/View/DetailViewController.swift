//
//  DetailViewController.swift
//  MVVM-learning
//
//  Created by Damir Aliyev on 15.01.2023.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    
    var viewModel: DetailViewModelType?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let viewModel = viewModel else {
            return
        }
        
        self.textLabel.text = viewModel.description

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel?.age.bind { [unowned self] in
            guard let string = $0 else { return }
            self.textLabel.text = string
        }
    }
    
}
