//
//  ViewController.swift
//  ImageLoader
//
//  Created by Bogdan Sasko on 3/4/19.
//  Copyright © 2019 vinso. All rights reserved.
//

import UIKit

class ImagesPage: UITableViewController {
    let imagesViewModel = ImagesViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imagesViewModel.getCountImages()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let imgCell = tableView.dequeueReusableCell(withIdentifier: imagesViewModel.kImageCellId) as? ImageCell else {
            return UITableViewCell()
        }
        return imgCell
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        guard let imgCell = cell as? ImageCell else {
            return
        }
        imgCell.modelView = imagesViewModel.getCellViewModel(for: indexPath.item)
    }
}
