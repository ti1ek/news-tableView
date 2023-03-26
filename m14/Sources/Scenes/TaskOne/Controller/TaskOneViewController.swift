//
//  TaskOneViewController.swift
//  m14
//
//  Created by Zhuldyz Bukeshova on 25.03.2023.
//

import UIKit

class TaskOneViewController: UIViewController {
    
    private var models: [TaskOneCellModel]?
    
    // MARK: - Outlets
    
    private lazy var tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .plain)
        table.register(TaskOneCell.self, forCellReuseIdentifier: TaskOneCell.identifier)
        table.dataSource = self
        table.delegate = self
        return table
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupconstraints()
        models = TaskOneCellModel.countries
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
        view.addSubview(tableView)
    }
    
    private func setupconstraints() {
        tableView.frame = view.bounds
    }
}

// MARK: - Extension

extension TaskOneViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        models?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let model = models?[indexPath.row] else { return UITableViewCell() }
        let cell = tableView.dequeueReusableCell(withIdentifier: TaskOneCell.identifier, for: indexPath) as? TaskOneCell
        cell?.configure(with: model)
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
