//
//  UIView.swift
//  LAN_transfer
//
//  Created by 各连明 on 2019/12/9.
//  Copyright © 2019 GELM. All rights reserved.
//

import Foundation

extension UIView {
    
    open func showEmptyView(tip:String) {
        let label = UILabel.init()
        label.textAlignment = .center
        label.text = tip
        label.font = UIFont.init(descriptor: UIFontDescriptor.init(), size: Utility.differIdiom(ipadValue: 20, iphoneValue: 18))
        label.textColor = UIColor.black
        label.tag = 10001
        label.numberOfLines = 0
        self.addSubview(label)
        
        let height = label.sizeThatFits(CGSize.init(width: self.frame.width - 30, height: 300)).height
        
        label.translatesAutoresizingMaskIntoConstraints = false
        self.addConstraint(NSLayoutConstraint.init(item: label, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1, constant: 0))
        label.translatesAutoresizingMaskIntoConstraints = false
        self.addConstraint(NSLayoutConstraint.init(item: label, attribute: NSLayoutConstraint.Attribute.centerY, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self, attribute: NSLayoutConstraint.Attribute.centerY, multiplier: 1, constant: 0))
        label.translatesAutoresizingMaskIntoConstraints = false
        self.addConstraint(NSLayoutConstraint.init(item: label, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: self.frame.width - 30))
        self.addConstraint(NSLayoutConstraint.init(item: label, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: height))
        
    }
    
    open func hideEmptyView() {
        if let label = self.viewWithTag(10001) {
            label.removeFromSuperview()
        }
    }
}
