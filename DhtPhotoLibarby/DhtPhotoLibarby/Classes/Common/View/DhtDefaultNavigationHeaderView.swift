//
//  DhtDefaultNavigationHeaderView.swift
//  DhtPhotoLibarby
//
//  Created by Nguyen Van Dung on 4/3/16.
//  Copyright © 2016 Dht. All rights reserved.
//

import Foundation
import UIKit

class DhtDefaultNavigationHeaderView: UIView, DhtBaseViewProtocol {
    var titleLabel: UILabel?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInit()
    }
    
    func commonInit() {
        self.backgroundColor = DhtPhotoAppearance.sharedInstance.headerViewBackgroundColor
        titleLabel = UILabel(frame: CGRectZero)
        titleLabel?.font = DhtPhotoAppearance.sharedInstance.headerViewTitleFont
        titleLabel?.textColor = DhtPhotoAppearance.sharedInstance.headerViewTitleColor
        titleLabel?.backgroundColor = UIColor.clearColor()
        self.addSubview(titleLabel!)
    }
    
    func titleFrameForSize(size: CGSize) -> CGRect {
        if let title = titleLabel {
            title.sizeToFit()
            let frame = title.frame
            return CGRect(x: (size.width - frame.size.width) / 2.0,
                          y: (size.height - frame.size.height) / 2.0,
                          width: frame.size.width, height: frame.size.height)
        }
        return CGRectZero
    }
    
    ///Mark protocol
    func updateFrame(frame: CGRect) {
        self.frame = frame
        titleLabel?.frame = self.titleFrameForSize(frame.size)
    }
    
    func prepareForReuse() {
        
    }
    
    func prepareForRecycle() {
        
    }
    
    func view() -> AnyObject {
        return self
    }
}