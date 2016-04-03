//
//  BaseView.swift
//  DhtPhotoLibarby
//
//  Created by Nguyen Van Dung on 4/3/16.
//  Copyright © 2016 Dht. All rights reserved.
//

import Foundation
import UIKit

class DhtBaseView: UIView, DhtBaseViewProtocol {
    var index: Int = 0
    
    //Protocol
    
    func updateFrame(frame: CGRect) {
        self.frame = frame
    }
    
    func view() -> AnyObject {
        return self
    }
    
    func prepareForRecycle() {
        
    }
    
    func prepareForReuse() {
        
    }
}