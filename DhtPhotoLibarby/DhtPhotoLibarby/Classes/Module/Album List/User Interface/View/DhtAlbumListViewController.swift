//
//  DhtAlbumListViewController.swift
//  DhtPhotoLibarby
//
//  Created by Nguyen Van Dung on 4/3/16.
//  Copyright © 2016 Dht. All rights reserved.
//

import Foundation
import UIKit

class DhtAlbumListViewController: DhtBaseViewController {
    private var headerView: DhtDefaultNavigationHeaderView!
    private var tableView: UITableView!
    
    override func loadView() {
        super.loadView()
        self.view.backgroundColor = UIColor.whiteColor()
        headerView = DhtDefaultNavigationHeaderView(frame: CGRect(x: 0, y: 0, width: ScreenSize().width, height: 64.0))
        headerView.backgroundColor = UIColor.redColor()
        headerView.titleLabel?.text = "Header title"
        self.view.addSubview(headerView)
        //add tableview
        self.setupTableView()
    }
    
    func setupTableView() {
        let tbFrame = CGRect(x: 0, y: headerView.frame.size.height, width: ScreenSize().width, height: ScreenSize().height - headerView.frame.size.height)
        tableView = UITableView(frame: tbFrame, style: UITableViewStyle.Plain)
        self.view.addSubview(tableView)
        self.tableView?.dataSource = self
        self.tableView?.delegate = self
        self.tableView?.tableFooterView = UIView()
        self.tableView?.tableHeaderView = UIView()
    }
}

extension DhtAlbumListViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 40.0
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.0
    }
    
    func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.0
    }
}