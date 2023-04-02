//
//  DetailsViewController.swift
//  LandmarkBookProjectt
//
//  Created by Serhat Demir on 2.04.2023.
//

import UIKit

class DetailsViewController: UIViewController {

    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    // MARK: - Properties
    var image: UIImage?
    var titleText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = titleText
        imageView.image = image
    }
}
