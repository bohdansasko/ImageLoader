//
//  ImagesViewModel.swift
//  ImageLoader
//
//  Created by Bogdan Sasko on 3/4/19.
//  Copyright © 2019 vinso. All rights reserved.
//

import Foundation

class ImagesViewModel {
    let kImageCellId = "kImageCellId"
    let imagesLinks: [String] = [
        "https://vignette.wikia.nocookie.net/central/images/0/0b/Battlefield-cool-192730%281%29.jpg/revision/latest?cb=20170224192120",
        "http://tierraeste.com/wp-content/uploads/cool-ready-high-quality_1333980.jpg",
        "https://static1.squarespace.com/static/51b3dc8ee4b051b96ceb10de/t/5c3e68fcb8a045e043d85ffe/1547593983378/?format=2500w",
        "https://static1.squarespace.com/static/51b3dc8ee4b051b96ceb10de/t/59c9315ef9a61ebe2dac341d/1506357602952/intriguing-trailer-for-a-cool-looking-indie-sci-fi-film-called-the-beyond-social.jpg",
        
        "https://blog.yellowoctopus.com.au/wp-content/uploads/2018/05/yellow-octopus-cool-pictures-30.jpg",
        "https://static1.squarespace.com/static/51b3dc8ee4b051b96ceb10de/t/5c4899bc898583c25136d4d4/1548261828115/this-cool-spider-man-into-the-spider-verse-poster-art-from-matt-ferguson-glows-in-the-dark-social.jpg?format=2500w",
        "https://static1.squarespace.com/static/51b3dc8ee4b051b96ceb10de/t/5c3e68fcb8a045e043d85ffe/1547593983378/?format=2500w",
        "https://vignette.wikia.nocookie.net/central/images/0/0b/Battlefield-cool-192730%281%29.jpg/revision/latest?cb=20170224192120",
        
        "https://cdn.pixabay.com/photo/2017/05/09/21/49/gecko-2299365_960_720.jpg",
        "https://cs4.pikabu.ru/post_img/big/2015/08/26/5/1440569645_1996564299.jpg",
        "https://images.wallpaperscraft.ru/image/svinya_porosnok_zagorod_kopyta_krupnyy_plan_lico_78678_3840x2400.jpg",
        "https://www.ajabgjab.com/wp-content/uploads/2018/08/Friendship-Day-HD-Wallpaper-Images.jpg",
        "https://cdn.pixabay.com/photo/2018/11/29/21/19/hamburg-3846525__340.jpg"
    ]
    
    var viewModels: [ImageViewModel] = []
    
    func getCountImages() -> Int {
        return imagesLinks.count
    }
    
    func getCellViewModel(for row: Int) -> ImageViewModel {
        if row >= viewModels.count {
            viewModels.append(ImageViewModel(imageUrl: imagesLinks[row]))
        }
        return viewModels[row]
    }
}
