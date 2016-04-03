//
//  DhtButton.swift
//  DhtPhotoLibarby
//
//  Created by Nguyen Van Dung on 4/3/16.
//  Copyright © 2016 Dht. All rights reserved.
//

import Foundation
import UIKit

class DhtButton: UIButton, DhtBaseViewProtocol {
    var extendedEdges: UIEdgeInsets?
    
    override func hitTest(point: CGPoint, withEvent event: UIEvent?) -> UIView? {
        if let extendedEdges = self.extendedEdges {
            if !UIEdgeInsetsEqualToEdgeInsets(extendedEdges, UIEdgeInsetsZero) {
                var extendFrame : CGRect = self.bounds
                extendFrame.origin.x -= extendedEdges.left;
                extendFrame.size.width += extendedEdges.left;
                extendFrame.origin.y -= extendedEdges.top;
                extendFrame.size.height += extendedEdges.top;
                extendFrame.size.width += extendedEdges.right;
                extendFrame.size.height += extendedEdges.bottom;
                if CGRectContainsPoint(extendFrame, point) {
                    return self;
                }
            }
        }
        return super.hitTest(point, withEvent: event)
    }
    
    ///Mark protocol 
    func updateFrame(frame: CGRect) {
        self.frame = frame
    }
    
    func prepareForReuse() {
        
    }
    
    func prepareForRecycle() {
        
    }
    
    func view() -> AnyObject {
        return self
    }
}