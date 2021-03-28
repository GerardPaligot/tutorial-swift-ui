//
//  ImageData.swift
//  Movies
//
//  Created by GERARD on 27/03/2021.
//

import Combine
import SwiftUI
import UIKit

final class ImageData: ObservableObject {
    private static let imageCache = NSCache<AnyObject, AnyObject>()
    private let url: URL
    
    @Published var image: UIImage? = nil
    
    init(url: String) {
        self.url = URL(string: url)!
    }
    
    public func downloadImage() {
        let urlString = url.absoluteString
        
        if let imageFromCache = ImageData.imageCache.object(forKey: urlString as AnyObject) as? UIImage {
            self.image = imageFromCache
            return
        }
        
        DispatchQueue.global(qos: .background).async { [weak self] in
            guard let self = self else { return }
            do {
                let data = try Data(contentsOf: self.url)
                guard let image = UIImage(data: data) else {
                    return
                }
                ImageData.imageCache.setObject(image, forKey: urlString  as AnyObject)
                DispatchQueue.main.async { [weak self] in
                    self?.image = image
                }
            } catch {
                print(error.localizedDescription)
            }
        }
    }
}
