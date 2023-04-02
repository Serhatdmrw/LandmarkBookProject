//
//  ViewController.swift
//  LandmarkBookProjectt
//
//  Created by Serhat Demir on 2.04.2023.
//

import UIKit

class HomeViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Properties
    private let landmarkNameArray = ["Collesium","Eiffel Tower","Greatwall","Christ The Redeemer","Kremlin","Statue Of Liberty","Stonehenge","Tajmahal"]
    private let landmarkImageArray = [UIImage(named: "colosseum"),UIImage(named: "eyfel"),UIImage(named: "greatwall"),UIImage(named: "isa"),UIImage(named: "kremlin"),UIImage(named: "özgürlük"),UIImage(named: "stonehenge"),UIImage(named: "tajmahal")]
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addDelegates()
    }
}

// MARK: - Helpers
private extension HomeViewController {
    
    func addDelegates() {
        tableView.delegate = self
        tableView.dataSource = self
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource
extension HomeViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = landmarkNameArray[indexPath.row]
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailsViewController = DetailsViewController()
        detailsViewController.image = landmarkImageArray[indexPath.row]
        detailsViewController.titleText = landmarkNameArray[indexPath.row]
        navigationController?.pushViewController(detailsViewController, animated: true)
    }
}
