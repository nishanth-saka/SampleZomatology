//
//  BotCollectionViewCell.h
//  SampleCollectionView
//
//  Created by Nishanth Vishnu on 27/12/18.
//  Copyright © 2018 Nishanth Vishnu. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BotCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *botImageView;
@property (weak, nonatomic) IBOutlet UILabel *mainLabel;
@property (weak, nonatomic) IBOutlet UILabel *subLabel;


@end

NS_ASSUME_NONNULL_END
