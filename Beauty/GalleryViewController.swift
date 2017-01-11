//
//  GalleryViewController.swift
//  Beauty
//
//  Created by 小七 on 2017/1/10.
//  Copyright © 2017年 luojia.ren. All rights reserved.
//

import UIKit

class GalleryViewController: UIViewController {
    var imageName: String?
    
    @IBOutlet weak var beautyImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if imageName != nil{
            beautyImage.image = UIImage(named: imageName!)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
