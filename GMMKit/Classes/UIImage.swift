//
//  UIImage.swift
//  LAN_transfer
//
//  Created by 各连明 on 2019/12/4.
//  Copyright © 2019 GELM. All rights reserved.
//

import Foundation
import AVFoundation

extension UIImage {
    public static func fetchFirstFrame(url:URL?,size:CGSize) -> UIImage? {
        let opts = [AVURLAssetPreferPreciseDurationAndTimingKey:NSNumber.init(booleanLiteral: false)]
        let generator:AVAssetImageGenerator = AVAssetImageGenerator.init(asset: AVURLAsset.init(url: url!, options: opts))
        generator.appliesPreferredTrackTransform = true
        generator.maximumSize = size
        do{
            let img =  try generator.copyCGImage(at: CMTime.init(value: 0, timescale: 10), actualTime: nil)
            return UIImage.init(cgImage: img)
        }catch{
            return nil
        }
    }
}
