//
//  SingleImageViewController.swift
//  RandomCatsApp
//
//  Created by Анастасия Тимофеева on 04.10.2021.
//

import Foundation
import UIKit

class SingleImageViewController: UIViewController {
    private var isLiked = false
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Cat"
    }
    func flipLikeButton(button: UIButton) {
        if isLiked == false {
            button.setImage(UIImage(named: "heart-fill.svg"), for: .normal)
            isLiked = true
        } else {
            button.setImage(UIImage(named: "heart.svg"), for: .normal)
            isLiked = false
        }
    }
    @IBOutlet weak var breedsLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var catImage: UIImageView!
    @IBAction func likeButtonAction(_ sender: UIButton) {
        flipLikeButton(button: sender)
    }
}
