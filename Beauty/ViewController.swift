//
//  ViewController.swift
//  Beauty
//
//  Created by 小七 on 2016/12/26.
//  Copyright © 2016年 luojia.ren. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var beautyPicker: UIPickerView!
    
    let beauties = ["范冰冰", "巩俐", "宋慧乔", "李冰冰", "王菲", "杨幂", "周迅"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        beautyPicker.dataSource = self
        beautyPicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoToGallery" {
            let index = beautyPicker.selectedRow(inComponent: 0)
            
            var imageName: String?
            switch index {
            case 0:
                imageName = "fanbingbing"
            case 1:
                imageName = "gongli"
            case 2:
                imageName = "songhuiqiao"
            case 3:
                imageName = "libingbing"
            case 4:
                imageName = "wangfei"
            case 5:
                imageName = "yangmi"
            case 6:
                imageName = "zhouxun"
            default:
                imageName = "fanbingbing"
            }
            
            let vc = segue.destination as! GalleryViewController
            vc.imageName = imageName
        }
    }
    
    @IBAction func close (segue: UIStoryboardSegue){    }

}

