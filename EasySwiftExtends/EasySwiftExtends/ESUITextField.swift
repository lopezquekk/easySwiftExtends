//
//  ESUITextField.swift
//  EasySwiftExtends
//
//  Created by Imac Webpro 2 on 4/05/17.
//  Copyright © 2017 webprogramo. All rights reserved.
//

import UIKit


extension UITextField {
    
    public func setHtmlText(_ text:String, withStyles:Bool = true){
        var txt = text
        if(withStyles){
            if let font = self.font{
                if let textcolor = self.textColor{
                    txt = "<style>body{font-family: '"+font.familyName+"'; font-size:"+String(describing: Int(font.pointSize))+"pt;color:"+textcolor.hexString()+"}</style>"+txt
                }
                
            }
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
    
    public func setUnderline(color:UIColor, width:CGFloat){
        let border = CALayer()
        border.borderColor = color.cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - width, width:  self.frame.size.width, height: self.frame.size.height)
        
        border.borderWidth = width
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
    
    public func setImageRight(_ imageName:String){
        self.leftViewMode = .always
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        let image = UIImage(named: imageName)
        imageView.image = image
        self.rightView = imageView
    }
    
    public func setImageLeft(_ imageName:String){
        self.leftViewMode = .always
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        let image = UIImage(named: imageName)
        imageView.image = image
        self.leftView = imageView
        
    }
    
    public func setStylePlaceHolder(){
        self.backgroundColor = .blue
        self.attributedPlaceholder = NSAttributedString(string: "placeholder text",
                                                               attributes: [NSForegroundColorAttributeName: UIColor.yellow])
    }
    
    @IBInspectable var placeHolderColor: UIColor? {
        get {
            return self.placeHolderColor
        }
        set {
            self.attributedPlaceholder = NSAttributedString(string:self.placeholder != nil ? self.placeholder! : "", attributes:[NSForegroundColorAttributeName: newValue!])
        }
    }
    
    public func setBorders(){
        
    }

    public func setShadows(){
        
    }
    
    public func mask(){
        
    }
    
}
