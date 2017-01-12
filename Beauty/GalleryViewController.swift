//
//  GalleryViewController.swift
//  Beauty
//
//  Created by 小七 on 2017/1/10.
//  Copyright © 2017年 luojia.ren. All rights reserved.
//

import UIKit
import Social

class GalleryViewController: UIViewController {
    var imageName: String?
    
    @IBOutlet weak var beautyImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let name = imageName {
            beautyImage.image = UIImage(named: imageName!)
            switch name {
            case "fangbingbing":
                navigationItem.title = "范冰冰"
            case "gongli":
                navigationItem.title = "巩俐"
            case "songhuiqiao":
                navigationItem.title = "宋慧乔"
            case "libingbing":
                navigationItem.title = "李冰冰"
            case "wangfei":
                navigationItem.title = "王菲"
            case "yangmi":
                navigationItem.title = "杨幂"
            case "zhouxun":
                navigationItem.title = "周迅"
            default:
                navigationItem.title = "范冰冰"
            }
        }
    }
    
    @IBAction func shareTapped(_ sender: Any) {
        let ct: SLComposeViewController =
        SLComposeViewController(forServiceType: SLServiceTypeSinaWeibo)
        ct.setInitialText("来看看我的相册app吧，地址就在git上https://github.com/summer1914/Beauty")
        ct.add(beautyImage.image)
        self.present(ct, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
