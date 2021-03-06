//
//  MediaProviderProtocol.swift
//  ElementX
//
//  Created by Stefan Ceriu on 17/03/2022.
//  Copyright © 2022 Element. All rights reserved.
//

import Foundation
import UIKit

enum MediaProviderError: Error {
    case failedRetrievingImage
    case invalidImageData
}

protocol MediaProviderProtocol {
    func imageFromSource(_ source: MediaSource?) -> UIImage?
    
    func loadImageFromSource(_ source: MediaSource, _ completion: @escaping (Result<UIImage, MediaProviderError>) -> Void)
    
    func imageFromURL(_ url: String?) -> UIImage?
    
    func loadImageFromURL(_ url: String, _ completion: @escaping (Result<UIImage, MediaProviderError>) -> Void)
}
