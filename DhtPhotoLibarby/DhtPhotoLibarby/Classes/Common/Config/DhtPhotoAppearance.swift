//
//  DhtPhotoLibConfig.swift
//  DhtPhotoLibarby
//
//  Created by Nguyen Van Dung on 4/3/16.
//  Copyright © 2016 Dht. All rights reserved.
//

import Foundation
import UIKit
@objc protocol DhtPhotoAppearanceDelegate {
    optional func headerViewTitleFont() -> UIFont
    optional func headerViewTitleColor() -> UIColor
    optional func headerViewBackgroundColor() -> UIColor
}

public final class DhtPhotoAppearance: NSObject {
    
    public class var sharedInstance: DhtPhotoAppearance {
        struct Static {
            static var onceToken: dispatch_once_t = 0
            static var instance: DhtPhotoAppearance? = nil
        }
        dispatch_once(&Static.onceToken) {
            Static.instance = DhtPhotoAppearance()
        }
        return Static.instance!
    }
    
    public override init() {
        super.init()
    }

    public var headerViewTitleFont: UIFont? = UIFont(name: "HelveticaNeue-Medium", size: 17.0)
    public var headerViewTitleColor: UIColor? = UIColor.whiteColor()
    public var headerViewBackgroundColor: UIColor? = UIColor.whiteColor()
    
    weak var delegate: DhtPhotoAppearanceDelegate? {
        didSet {
            self.setupAppearance()
        }
    }
    
    func setupAppearance() {
        if let delegate = delegate {
            headerViewTitleFont~>delegate.headerViewTitleFont?()
            headerViewTitleColor~>delegate.headerViewTitleColor?()
            headerViewBackgroundColor~>delegate.headerViewBackgroundColor?()
        }
    }
}

infix operator ~> { }
public func ~><T: Any>(inout lhs: T?, rhs: T?) -> T? {
    if lhs != nil && rhs != nil {
        lhs = rhs
    }
    
    return lhs
}
