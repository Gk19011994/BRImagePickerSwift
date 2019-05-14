//
//  ViewController.swift
//  BRImagePickerSwift
//
//  Created by Govind on 14/05/19.
//  Copyright © 2019 Govind. All rights reserved.
//

import UIKit
import AssetsLibrary
// AssetsLibrary import lib from linked libary in general tab see

class ViewController: UIViewController {

    var selectedAssesArray:[Any]? = nil
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func click(_ sender: Any) {
        
        ///selecte multiple image like whatsapp
        let imagePicker = BRImagePicker(presenting: self)
        imagePicker?.show(dataBlock: { (data) in
            self.selectedAssesArray = data
        })
        
    }
    
    
    
    
}

//how to use in swift 4
//ios 12
//xcode 10.1

/*
 1. copy and paste BRimagepicker folder
 2. make bridge header file and import bs files
 3. register bridge file at build setting
 4. Add library assetsLibrary.framework and import in the view controller
 5. implement code in action(Button)
 6. add privacy of photo library use in info plist
 7. build clean  and RUN
 
 >> Enjoyyyyy
 
 */
