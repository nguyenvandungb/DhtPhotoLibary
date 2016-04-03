//
//  DhtBaseViewController.swift
//  DhtPhotoLibarby
//
//  Created by Nguyen Van Dung on 4/3/16.
//  Copyright © 2016 Dht. All rights reserved.
//

import Foundation
import UIKit

class DhtBaseViewController: UIViewController {
    var reusableItemViewsByIdentifier: [String: [DhtBaseViewProtocol]] = [String: [DhtBaseViewProtocol]]()
    var visibleItemViews: [DhtBaseViewProtocol] = [DhtBaseViewProtocol]()
    
    
    func enqueueView(itemView: DhtBaseViewProtocol?) {
        guard let _view = itemView else {
            return
        }
        let identifier = NSStringFromClass(_view.dynamicType)
        var views = reusableItemViewsByIdentifier[identifier]
        if (views == nil) {
            views = [DhtBaseViewProtocol]()
            reusableItemViewsByIdentifier[identifier] = views
        }
    
        views?.append(_view)
    }
    
    func dequeueViewWithIdentifier(identifier: String?) -> DhtBaseViewProtocol? {
        guard let idy = identifier else {
            return nil
        }
        if var views = reusableItemViewsByIdentifier[idy] where views.count > 0 {
            let itemView = views.last!
            itemView.prepareForReuse()
            views.removeLast()
            return itemView
        }
        return nil
    }
}