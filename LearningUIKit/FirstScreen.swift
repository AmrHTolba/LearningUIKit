//
//  ViewController.swift
//  LearningUIKit
//
//  Created by Amr El-Fiqi on 11/02/2025.
//

import UIKit

class FirstScreen: UIViewController {
    // MARK: - Properties
    private let images: [UIImage] = [
        UIImage(named: "1")!,
        UIImage(named: "2")!,
        UIImage(named: "3")!,
        UIImage(named: "4")!,
        UIImage(named: "5")!
    ]
    
    // MARK: - UI Components
    private var tableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .clear
        tableView.allowsSelection  = true
        tableView.register(CustomCell.self, forCellReuseIdentifier: CustomCell.identifier)
        
        return tableView
    }()
    
    let nextButton = UIButton()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    // MARK: - Setup UI
    
    private func setupUI() {
        title = "First Screen"
        view.applyGradientBackground()
        setupButton()
        setupTableView()
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.largeTitleTextAttributes = [
                .foregroundColor: UIColor(red: 92/255, green: 64/255, blue: 120/255, alpha: 1.0),
                .font: UIFont.systemFont(ofSize: 50, weight: .bold) // Optional: Customize font
            ]
    }
    
    func setupTableView() {
        view.addSubview(tableView)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }
    
    func setupButton() {
        //view.addSubview(nextButton)
        
        nextButton.configuration = .filled()
        nextButton.configuration?.baseBackgroundColor = UIColor(red: 200/255, green: 180/255, blue: 225/255, alpha: 1.0)
        nextButton.configuration?.title = "Next"
        nextButton.setTitleColor(UIColor(red: 60/255, green: 40/255, blue: 90/255, alpha: 1.0), for: .normal)
        nextButton.layer.cornerRadius = 10
        
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        
        nextButton.addTarget(self, action: #selector(goToNextScreen), for: .touchUpInside)
        
        /* NSLayoutConstraint.activate([
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            nextButton.widthAnchor.constraint(equalToConstant: 200),
            nextButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        */
    }

    
    @objc func goToNextScreen() {
        let nextScreen = SecondScreen()
        navigationController?.pushViewController(nextScreen, animated: true)
    }

    
}

extension FirstScreen: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CustomCell.identifier, for: indexPath) as? CustomCell  else { fatalError("Couldn't dequeue custom cell") }
        cell.backgroundColor = UIColor(red: 230/255, green: 220/255, blue: 250/255, alpha: 1.0)
        cell.textLabel?.text = "\(indexPath.row.description)"
        return cell
    }
}
