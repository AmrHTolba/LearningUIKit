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
        iv.contentMode = .scaleToFill
        iv.image = UIImage(systemName: "questionmark")
        iv.tintColor = .label
        iv.layer.cornerRadius = 10
        iv.clipsToBounds = false
        iv.layer.shadowColor = UIColor.black.cgColor
        iv.layer.shadowOpacity = 0.5  // Adjust transparency (0.0 to 1.0)
        iv.layer.shadowOffset = CGSize(width: 2, height: 2)  // Adjust shadow position
        iv.layer.shadowRadius = 5
        return iv
    }()
    
    private let myLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 140/255, green: 100/255, blue: 180/255, alpha: 1.0)
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 24, weight: .medium)
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
            
            myImageView.heightAnchor.constraint(equalToConstant: 100),
            myImageView.widthAnchor.constraint(equalToConstant: 100),
            
            myLabel.leadingAnchor.constraint(equalTo: myImageView.trailingAnchor, constant: 16),
            myLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            myLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            myLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
                
            ])
    }
}
