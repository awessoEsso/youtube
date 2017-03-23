//
//  TrendingCell.swift
//  youtube
//
//  Created by Esso Awesso on 09/02/2017.
//  Copyright © 2017 Esso Awesso. All rights reserved.
//

import UIKit

class TrendingCell: FeedCell {

    override func fetchVideos() {
        ApiService.sharedInstance.fetchTrendingFeed { (videos) in
            self.videos = videos
            self.collectionView.reloadData()
        }
    }

}
