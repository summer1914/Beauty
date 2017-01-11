//
//  ViewControllerExtension.swift
//  Beauty
//
//  Created by 小七 on 2016/12/26.
//  Copyright © 2016年 luojia.ren. All rights reserved.
//

import UIKit

extension ViewController: UIPickerViewDataSource {
    // returns the number of 'columns' to display.
    @available(iOS 2.0, *)
    public func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1;
    }
    
    
    // returns the # of rows in each component..
    @available(iOS 2.0, *)
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return beauties.count;
    }
}

extension ViewController: UIPickerViewDelegate{
    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        return beauties[row];
    }
}
