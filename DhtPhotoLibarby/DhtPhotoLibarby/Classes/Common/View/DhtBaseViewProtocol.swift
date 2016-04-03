//
//  DhtBaseViewProtocol.swift
//  DhtPhotoLibarby
//
//  Created by Nguyen Van Dung on 4/3/16.
//  Copyright © 2016 Dht. All rights reserved.
//

import Foundation
import UIKit

protocol DhtBaseViewProtocol: NSObjectProtocol {
    func view() -> AnyObject
    func updateFrame(frame: CGRect)
    func prepareForRecycle()
    func prepareForReuse()
}