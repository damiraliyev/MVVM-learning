//
//  TableViewModelType.swift
//  MVVM-learning
//
//  Created by Damir Aliyev on 15.01.2023.
//

import Foundation

protocol TableViewViewModelType {
    var numberOfRows: Int { get }
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewСellViewModelType?
}
