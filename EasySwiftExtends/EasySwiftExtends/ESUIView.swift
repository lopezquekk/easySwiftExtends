//
//  ESUIView.swift
//  EasySwiftExtends
//
//  Created by Imac Webpro 2 on 4/05/17.
//  Copyright © 2017 webprogramo. All rights reserved.
//

import UIKit


extension UIView{
    
    
    public func setShadowsContainer(color:CGColor, shadowOpacity:Float, shadowOffset: CGSize, shadowRadius:CGFloat){
        
        let shadowPath = UIBezierPath(rect: self.bounds)
        let borderView = UIView()
        borderView.frame = self.bounds
        borderView.layer.masksToBounds = true
        borderView.layer.shadowColor = color
        borderView.layer.shadowOpacity = shadowOpacity
        borderView.layer.shadowOffset = shadowOffset
        borderView.layer.shadowRadius = shadowRadius
        borderView.layer.shadowPath = shadowPath.cgPath
        self.addSubview(borderView)
        
    }
    
    public func roundedCorners(_ corners:UIRectCorner, width:CGFloat,height:CGFloat ){
        let maskLayer = CAShapeLayer()
        maskLayer.path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: width, height: height)).cgPath
        self.layer.mask = maskLayer
    }
    
    public func roundedAllCorners(r:CGFloat){
        self.layer.cornerRadius = r
        
    }
    
    
}
