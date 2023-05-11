//
//  File.swift
//  
//
//  Created by Francisco Gorina Vanrell on 11/5/23.
//

import Foundation
import AppKit

class ImageCacher {
    
    static var current : ImageCacher = ImageCacher()

    var images : [String : NSImage] = [:]
    
    init(){
        
    }
    
    func image(named  imageName : String) -> NSImage?{
        
        if let image = images[imageName]{
            return image
        }else{
            if let nsImage = Bundle.module.image(forResource: imageName){
                images[imageName] = nsImage
                return nsImage
            }
        }
        return nil
    }
}
