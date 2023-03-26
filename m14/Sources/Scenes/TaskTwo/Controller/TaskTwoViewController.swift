//
//  TaskTwoViewController.swift
//  m14
//
//  Created by Zhuldyz Bukeshova on 25.03.2023.
//

import UIKit

class TaskTwoViewController: UIViewController {
    
    private var sectionModel: [SectionNewsRecordModel]?
    private let identifier = "cell"
    
    // MARK: - Outlets
    
    private lazy var tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.register(UITableViewCell.self, forCellReuseIdentifier: identifier)
        table.dataSource = self
        table.delegate = self
        return table
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupconstraints()
        sectionModel = createSectionArray().sorted { $0.title < $1.title}
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
        view.addSubview(tableView)
    }
    
    private func setupconstraints() {
        tableView.frame = view.bounds
    }
    
    // MARK: - Functions
    
    func convertStringToDate() -> [NewsRecordWithDateModel] {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        
        let updatedModel: [NewsRecordWithDateModel]  = NewsRecordModel.models.map { NewsRecordWithDateModel.init(title: $0.title, publishedAt: dateFormatter.date(from: $0.publishedAt) ?? Date())
        }
        return updatedModel
    }
    
    func convertModelToDict() -> [Date: [NewsRecordWithDateModel]] {
        let updatedModel = convertStringToDate()
        let dictModel = Dictionary(grouping: updatedModel) { (element: NewsRecordWithDateModel) -> Date in
            let calendar = Calendar.current.dateComponents([.day, .month, .year], from: element.publishedAt)
            let finalDate = Calendar.current.date(from: calendar)
            return finalDate ?? Date()
        }
        return dictModel
    }
    
    func createSectionArray() -> [SectionNewsRecordModel] {
        let updatedModel = convertModelToDict()
        let section: [SectionNewsRecordModel] = updatedModel.map {(key, value) in
            return SectionNewsRecordModel(title: key, news: value )
        }
        return section
    }
    
    func dateToString(date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy HH:mm"
        return dateFormatter.string(from: date)
    }
}

// MARK: - Extension

extension TaskTwoViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        sectionModel?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let section = sectionModel?[section]
        let date = section?.title ?? Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MMMM-yyyy"
        return dateFormatter.string(from: date)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        sectionModel?[section].news.count ?? 0
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        
        let section = sectionModel?[indexPath.section]
        let textCell = section?.news[indexPath.row]
        let date = dateToString(date: textCell?.publishedAt ?? Date())
        
        let attributedText = NSMutableAttributedString()
        attributedText.append(NSAttributedString(string: textCell?.title ?? "",
                                                 attributes: [.font: UIFont.systemFont(ofSize: 18)]))
        attributedText.append(NSAttributedString(string: ("\n\n" + date),
                                                 attributes: [.font: UIFont.systemFont(ofSize: 16)]))
        cell.textLabel?.attributedText = attributedText
        cell.textLabel?.numberOfLines = 0
        return cell
    }
}
