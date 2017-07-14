//
//  ESUILabel.swift
//  EasySwiftExtends
//
//  Created by Imac Webpro 2 on 4/05/17.
//  Copyright © 2017 webprogramo. All rights reserved.
//

import UIKit


extension UILabel {
    
    public func setHtmlText(_ text:String, withStyles:Bool = true){
        
        var txt = text
        if(withStyles){
            txt = "<style>body{font-family: '"+self.font.familyName+"'; font-size:"+String(describing: Int(self.font.pointSize))+"pt;color:"+self.textColor.hexString()+"}</style>"+txt
        }
        
        let attrStr = try! NSAttributedString(
            data: txt.data(using: String.Encoding.unicode, allowLossyConversion: true)!,
            options: [ NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType],
            documentAttributes: nil)
        
        
        
        var frame:CGRect = self.frame
        frame.size.width = frame.size.width + 8
        self.attributedText = attrStr
        self.frame = frame
    }
    
    public func s(){
        
    }
    
}
