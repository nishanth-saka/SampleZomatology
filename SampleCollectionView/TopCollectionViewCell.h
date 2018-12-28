//
//  TopCollectionViewCell.h
//  SampleCollectionView
//
//  Created by Nishanth Vishnu on 27/12/18.
//  Copyright © 2018 Nishanth Vishnu. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TopCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIView *wholeView;
@property (weak, nonatomic) IBOutlet UIImageView *topImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *restaurantNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UIButton *addBtn;

@end

NS_ASSUME_NONNULL_END
