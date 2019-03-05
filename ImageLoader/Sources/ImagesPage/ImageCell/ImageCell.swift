//
//  ImageCell.swift
//  ImageLoader
//
//  Created by Bogdan Sasko on 3/4/19.
//  Copyright © 2019 vinso. All rights reserved.
//

import UIKit

class ImageCell: UITableViewCell {
    var modelView: ImageViewModel? {
        didSet {
            load()
        }
    }
    
    @IBOutlet weak var activityView: UIActivityIndicatorView!
    @IBOutlet weak var picture: UIImageView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func load() {
        picture.image = nil
        activityView.startAnimating()
        modelView?.loadImage(completion: {
            [weak self] (image) -> Void in
            DispatchQueue.main.async {
                self?.picture.image = image
                self?.activityView.stopAnimating()
            }
        })
    }
}
