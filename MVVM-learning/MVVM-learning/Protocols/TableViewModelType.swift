//
//  TableViewModelType.swift
//  MVVM-learning
//
//  Created by Damir Aliyev on 15.01.2023.
//

import Foundation

protocol TableViewModelType {
    var numberOfRows: Int { get }
    var profiles: [Profile] { get }
}
