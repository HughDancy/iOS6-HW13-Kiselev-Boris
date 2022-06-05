//
//  ViewController.swift
//  iOS6-HW13-Kiselev Boris
//
//  Created by Борис Киселев on 31.05.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    //MARK: - View's
    
    let idTable = UITableView(frame: .zero, style: UITableView.Style.insetGrouped)
    
    private lazy var searchStackview: UIStackView = {
        let searchStackview = UIStackView()
        searchStackview.axis = .horizontal
        
        return searchStackview
    }()
    
    private lazy var searchTextField: UITextField = {
        let searchTextField = UITextField()
        let searchImageView = UIImageView()
        let searchImage = UIImage(named: "searchImage")
        searchImageView.image = searchImage
        searchTextField.placeholder = " Поиск"
        searchTextField.leftView = searchImageView
        searchTextField.leftViewMode = .always
        searchTextField.backgroundColor = UIColor(displayP3Red: 0.91, green: 0.90, blue: 0.93, alpha: 1)
        searchTextField.layer.cornerRadius = 5
        searchTextField.clipsToBounds = true
        
        return searchTextField
    }()
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(searchStackview)
        view.addSubview(idTable)
        idTable.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        searchStackview.addArrangedSubview(searchTextField)
        setTableview()
        setupLayout()
        setupData()
        
        view.backgroundColor = UIColor(displayP3Red: 0.96, green: 0.96, blue: 0.98, alpha: 1)
        title = "Настройки"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.prefersLargeTitles = true
        
    }
    
    //MARK: - Table and Cell Settings
    
    private func setTableview() {
        idTable.delegate = self
        idTable.dataSource = self
        idTable.estimatedSectionHeaderHeight = 0.5
        idTable.sectionHeaderTopPadding = 1
        idTable.tableHeaderView?.backgroundColor = UIColor(displayP3Red: 0.96, green: 0.96, blue: 0.98, alpha: 1)
    
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {

        return settingsData.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingsData[section].text.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = settingsData[indexPath.section].text[indexPath.row]
        content.secondaryText = settingsData[indexPath.section].secondText[indexPath.row]
        content.image = settingsData[indexPath.section].image[indexPath.row]
        cell.backgroundColor = .white
        cell.layer.cornerRadius = 2
        cell.clipsToBounds = true
                
    
        cell.contentConfiguration = content
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        idTable.deselectRow(at: indexPath, animated: true)
        print("Нажата ячейка \(settingsData[indexPath.section].text[indexPath.row])")
    }
    
    
    func setupData()  {
        settingsData.append(idSettings)
        settingsData.append(connectionData)
        settingsData.append(notificationData)
        settingsData.append(mainData)
        settingsData.append(appStoreData)
        settingsData.append(basicsAppData)
        settingsData.append(basicsMultimediaAppData)
        settingsData.append(tvProvaiderData)
        settingsData.append(developerData)
        settingsData.append(thirdPartyAppData)
    }
    
    
    // MARK: - Layout Settings
    
    func setupLayout() {
        
        searchStackview.translatesAutoresizingMaskIntoConstraints = false
        searchStackview.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 3).isActive = true
        searchStackview.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 19).isActive = true
        searchStackview.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -19).isActive = true
        searchStackview.widthAnchor.constraint(equalTo: searchStackview.widthAnchor).isActive = true
        searchStackview.heightAnchor.constraint(equalToConstant: 35).isActive = true
        
        idTable.translatesAutoresizingMaskIntoConstraints = false
        idTable.topAnchor.constraint(equalTo: searchStackview.bottomAnchor, constant: 5).isActive = true
        idTable.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 1).isActive = true
        idTable.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -1).isActive = true
        idTable.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
    }
    
    
}


