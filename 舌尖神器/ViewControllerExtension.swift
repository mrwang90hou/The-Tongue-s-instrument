//
//  ViewControllerExtension.swift
//  舌尖神器
//
//  Created by 王宁 on 2017/5/20.
//  Copyright © 2017年 mrwang90hou. All rights reserved.
//

import UIKit
extension ViewController: UIPickerViewDataSource {
    // two required methods
    
    // pickerView 列数
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    // pickerView 每列个数  行数
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        
        
        // 每个选择框的行数
        if 0 == component
        {
            // 第一列
            let count = vegetables.count
            return count
        }
        else if 1 == component
        {
            // 第二列
            let count = cookers.count
            return count
        }
        else if 2 == component
        {
            // 第三列
            let count = meats.count
            return count
        }
        return 0
    }
}


extension ViewController: UIPickerViewDelegate {
    // several optional methods:
    
    // func pickerView(pickerView: UIPickerView!, widthForComponent component: Int) -> CGFloat
    
    // func pickerView(pickerView: UIPickerView!, rowHeightForComponent component: Int) -> CGFloat
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if 0 == component
        {
            // 第一列
            let count = vegetables[row]
            return count
        }
        else if 1 == component
        {
            // 第二列
            let count = cookers[row]
            return count
        }
        else if 2 == component
        {
            // 第三列
            let count = meats[row]
            return count
        }
        return nil
        
}
    
    // func pickerView(pickerView: UIPickerView!, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString!
    
    // func pickerView(pickerView: UIPickerView!, viewForRow row: Int, forComponent component: Int, reusingView view: UIView!) -> UIView!
    
    // func pickerView(pickerView: UIPickerView!, didSelectRow row: Int, inComponent component: Int)
}
