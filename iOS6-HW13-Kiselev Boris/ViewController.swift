//
//  ViewController.swift
//  iOS6-HW13-Kiselev Boris
//
//  Created by Борис Киселев on 31.05.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    //MARK: - Subview's
    
    let idTable = UITableView(frame: .zero, style: UITableView.Style.insetGrouped)
    
    private lazy var searchField: UISearchBar  = {
        let searchField = UISearchBar()
        searchField.searchBarStyle = UISearchBar.Style.minimal
        searchField.barTintColor = UIColor(displayP3Red: 0.96, green: 0.96, blue: 0.98, alpha: 1)
        searchField.placeholder = "Поиск"
        
        return searchField
    }()

    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(searchField)
        view.addSubview(idTable)
        idTable.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        navigationController?.navigationBar.topItem?.hidesSearchBarWhenScrolling = true
        navigationController?.navigationBar.topItem?.hidesSearchBarWhenScrolling = true
        setTableview()
        setupLayout()
        setupData()
        
        view.backgroundColor = UIColor(displayP3Red: 0.96, green: 0.96, blue: 0.98, alpha: 1)
        title = "Настройки"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.topItem?.hidesSearchBarWhenScrolling = true
        self.navigationController?.hidesBarsOnSwipe = true
        navigationController?.setNavigationBarHidden(false, animated: animated)
        
    
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
//        navigationController?.hidesBarsOnSwipe = false
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
        
        let switchForCell = UISwitch(frame: .zero)
        switchForCell.setOn(false, animated: true)
        switchForCell.tag = indexPath.row
        
        cell.contentConfiguration = content
        
        if content.text == "Авиарежим" || content.text == "VPN" {
            cell.accessoryView = switchForCell
        } else {
            cell.accessoryType = .disclosureIndicator
        }
        
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
        
        searchField.translatesAutoresizingMaskIntoConstraints = false
        searchField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 3).isActive = true
        searchField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 19).isActive = true
        searchField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -19).isActive = true
        
        idTable.translatesAutoresizingMaskIntoConstraints = false
        idTable.topAnchor.constraint(equalTo: searchField.bottomAnchor, constant: 5).isActive = true
        idTable.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 1).isActive = true
        idTable.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -1).isActive = true
        idTable.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
    }
}


