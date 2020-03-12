//
//  UIColor.swift
//  LCLoan
//
//  Created by 各连明 on 2019/5/5.
//  Copyright © 2019年 GELM. All rights reserved.
//

import Foundation

extension UIColor {
    public static func FromRGB(color_vaule : UInt64 , alpha : CGFloat = 1) -> UIColor {
        let redValue = CGFloat((color_vaule & 0xFF0000) >> 16)/255.0
        let greenValue = CGFloat((color_vaule & 0xFF00) >> 8)/255.0
        let blueValue = CGFloat(color_vaule & 0xFF)/255.0
        return UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: alpha)
    }
}
