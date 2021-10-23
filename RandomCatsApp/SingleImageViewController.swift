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

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var breedsLabel: UILabel!
    @IBOutlet var categoryLabel: UILabel!

    @IBAction private func likeButtonAction(_ sender: UIButton) {
        flipLikeButton(button: sender)
    }
}
