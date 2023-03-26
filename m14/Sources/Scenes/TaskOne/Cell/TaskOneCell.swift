//
//  TaskOneCell.swift
//  m14
//
//  Created by Zhuldyz Bukeshova on 25.03.2023.
//

import UIKit

class TaskOneCell: UITableViewCell {
    
    static let identifier = String(describing: TaskOneCell.self)
    
    // MARK: - Outlets
    
    private lazy var countryImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        clipsToBounds = true
        return image
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .right
        label.translatesAutoresizingMaskIntoConstraints = false
        //label.clipsToBounds = true
        return label
    }()
    
    // MARK: - Initializers
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(countryImage)
        contentView.addSubview(titleLabel)
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            countryImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            countryImage.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            countryImage.widthAnchor.constraint(equalToConstant: 100),
            countryImage.heightAnchor.constraint(equalToConstant: 60),
            
            titleLabel.leadingAnchor.constraint(equalTo: countryImage.trailingAnchor, constant: 10),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            titleLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ])
    }
    
    // MARK: - Reuse
    
    func configure(with model: TaskOneCellModel) {
        countryImage.image = model.image
        titleLabel.text = model.title
    }
    
    override func prepareForReuse() {
        countryImage.image = nil
        titleLabel.text = nil
    }
}
