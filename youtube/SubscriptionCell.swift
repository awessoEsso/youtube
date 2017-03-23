//
//  SubscriptionCell.swift
//  youtube
//
//  Created by Esso Awesso on 09/02/2017.
//  Copyright © 2017 Esso Awesso. All rights reserved.
//

import UIKit

class SubscriptionCell: FeedCell {

    override func fetchVideos() {
        ApiService.sharedInstance.fetchSubscriptionFeed { (videos) in
            self.videos = videos
            self.collectionView.reloadData()
        }
    }

}
