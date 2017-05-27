//
//  extensions.swift
//  YoLifePlus
//
//  Created by Jucong He on 5/26/17.
//  Copyright © 2017 JucongHe. All rights reserved.
//

import Foundation
import UIKit

extension UIImage{
    func resizeImage(newWidth:CGFloat, newHeight:CGFloat) -> UIImage? {
        let newSize = CGSize(width: newWidth, height: newHeight)
        let newRect = CGRect(x: 0, y: 0, width: newWidth, height: newHeight)
        UIGraphicsBeginImageContextWithOptions(newSize, false, 0)
        // Get the image context of current UIImage and modify the rect
        if let context = UIGraphicsGetCurrentContext() {
            context.interpolationQuality = .high
            let flipVertical = CGAffineTransform(a: 1, b: 0, c: 0, d: -1, tx: 0, ty: newSize.height)
            context.concatenate(flipVertical)
            context.draw(self.cgImage!, in: newRect)
            let newImage = UIImage(cgImage: context.makeImage()!)
            UIGraphicsEndImageContext()
            return newImage
        }
        return nil
    }
}
