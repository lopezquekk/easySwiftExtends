//
//  ESUIImage.swift
//  EasySwiftExtends
//
//  Created by Imac Webpro 2 on 4/05/17.
//  Copyright © 2017 webprogramo. All rights reserved.
//

import UIKit


extension UIImageView{
    
    
    public func roundedImage(){
        self.layer.cornerRadius = self.frame.size.width / 2
        self.clipsToBounds = true
    }
    
    //https://stackoverflow.com/questions/42281445/swift-add-an-image-to-a-rounded-view
    public func shadows()
    {
        
    }
    
    
    
}
