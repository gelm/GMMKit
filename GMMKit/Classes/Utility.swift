//
//  Utility.swift
//  LAN_transfer
//
//  Created by 各连明 on 2019/12/5.
//  Copyright © 2019 GELM. All rights reserved.
//

import Foundation

class Utility: NSObject {
    public static func differIdiom(ipadValue:CGFloat,iphoneValue:CGFloat) -> CGFloat {
        if(UI_USER_INTERFACE_IDIOM()==UIUserInterfaceIdiom.pad){
            return ipadValue
        }
        return iphoneValue
    }
}
