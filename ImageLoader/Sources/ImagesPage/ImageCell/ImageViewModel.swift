//
//  ImageViewModel.swift
//  ImageLoader
//
//  Created by Bogdan Sasko on 3/4/19.
//  Copyright © 2019 vinso. All rights reserved.
//

import UIKit

class ImageViewModel {
    let imageUrl: String?
    var image: UIImage?
    
    init(imageUrl: String?) {
        self.imageUrl = imageUrl
    }
    
    func loadImage(completion: @escaping (UIImage?) -> Void) {
        if image != nil {
            print("image has been loaded")
            completion(image)
            return
        }
        
        print("loading image")
        guard let imgStrUrl = imageUrl,
            let imgUrl = URL(string: imgStrUrl) else {
                return completion(nil)
        }
        
        URLSession.shared.dataTask(with: imgUrl, completionHandler: {
            [weak self] fetchedData, response, error in
            guard let strongSelf = self, let data = fetchedData else {
                return
            }
            strongSelf.image = UIImage(data: data)
            if imgStrUrl == strongSelf.imageUrl {
                return completion(strongSelf.image)
            } else {
                print("url is different")
                return completion(nil)
            }
        }).resume()
    }
}
