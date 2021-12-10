//
//  DetailViewController.swift
//  Storm Viewer
//
//  Created by Shahid Ghafoor on 08/12/2021.
//

import UIKit

class DetailViewController: UIViewController {

    var selectedImage: String?
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = selectedImage
        navigationController?.navigationBar.prefersLargeTitles = true

        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.hidesBarsOnTap = false
    }
}
