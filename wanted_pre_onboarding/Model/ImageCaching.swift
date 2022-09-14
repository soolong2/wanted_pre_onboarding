//
//  ImageCaching.swift
//  wanted_pre_onboarding
//
//  Created by so on 2022/09/14.
//

import Foundation
 

class ImageCache {
   static var shared : ImageCache = ImageCache()
    var cache: [URL: Data]?
    
    func imageDownload (url: URL) -> Data {
        if  let cache = cache?[url] {
            return cache
        }
        let data = try! Data(contentsOf: url)
        cache?[url] = data
        return data
    }
}
