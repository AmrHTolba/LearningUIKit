//
//  CustomCell.swift
//  LearningUIKit
//
//  Created by Amr El-Fiqi on 12/02/2025.
//

import UIKit

class CustomCell: UITableViewCell {
    // Identifier
    static let identifier = "CustomCell"

    // MARK: - UI Elements
    private let myImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.image = UIImage(systemName: "questionmark")
        iv.tintColor = .label
        return iv
    }()
    
    private let myLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 17, weight: .regular)
        label.text = "Ren"
        return label
    }()
    
    
    // MARK: - Init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    required init?(coder: NSCoder) {
        fatalError("init(code:) has not been implemented")
    }
    
    // MARK: - Setup UI
    
    public func configure(with image: UIImage, and label: String) {
        self.myImageView.image = image
        self.myLabel.text = label
    }
    
    private func setupUI() {
        contentView.addSubview(myImageView)
        contentView.addSubview(myLabel)
        
        myImageView.translatesAutoresizingMaskIntoConstraints = false
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            myImageView.leadingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.leadingAnchor),
            myImageView.topAnchor.constraint(equalTo: contentView.layoutMarginsGuide.topAnchor),
            myImageView.bottomAnchor.constraint(equalTo: contentView.layoutMarginsGuide.bottomAnchor),
            
            myImageView.heightAnchor.constraint(equalToConstant: 90),
            myImageView.widthAnchor.constraint(equalToConstant: 90),
            
            myLabel.leadingAnchor.constraint(equalTo: myImageView.trailingAnchor, constant: 16),
            myLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            myLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            myLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
                
            ])
    }
}
