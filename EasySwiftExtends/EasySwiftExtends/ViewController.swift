//
//  ViewController.swift
//  EasySwiftExtends
//
//  Created by Imac Webpro 2 on 3/05/17.
//  Copyright © 2017 webprogramo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var vista: UIView!
    @IBOutlet weak var textflield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Color Hexadecimal
        //self.vista.backgroundColor = UIColor(hex: "#CCCCCC")
        self.vista.roundedCorners([.allCorners],width: 10,height: 10)
        //self.vista.roundedAllCorners(r: 10)
        self.vista.setShadowsContainer(color: UIColor.black.cgColor, shadowOpacity: 5, shadowOffset: CGSize.init(width: 3.0, height: 3.0), shadowRadius: 5)
        
        self.label.setHtmlText("<strong>Camilo</strong> López")
        //self.textflield.setHtmlText("<strong>Camilo</strong> López")
        
        self.textflield.setUnderline(color: UIColor.blue, width: 1.0)
        self.textflield.setImageLeft("fav")
        self.textflield.setImageRight("fav")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

