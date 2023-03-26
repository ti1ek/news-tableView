//
//  TaskOneCellModel.swift
//  m14
//
//  Created by Zhuldyz Bukeshova on 25.03.2023.
//

import UIKit

struct TaskOneCellModel {
    var image: UIImage?
    var title: String
}

extension TaskOneCellModel {
    static var countries: [TaskOneCellModel] = [
    TaskOneCellModel(image: UIImage(named: "Austria"), title: "Austria"),
    TaskOneCellModel(image: UIImage(named: "Belgium"), title: "Belgium"),
    TaskOneCellModel(image: UIImage(named: "France"), title: "France"),
    TaskOneCellModel(image: UIImage(named: "Germany"), title: "Germany"),
    TaskOneCellModel(image: UIImage(named: "Greece"), title: "Greece")
    ]
}
