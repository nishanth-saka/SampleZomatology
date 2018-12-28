//
//  ViewController.m
//  SampleCollectionView
//
//  Created by Nishanth Vishnu on 27/12/18.
//  Copyright © 2018 Nishanth Vishnu. All rights reserved.
//

#import "ViewController.h"
#import "TopCollectionViewCell.h"
#import "BotCollectionViewCell.h"

#define UIColorFromRGB(rgbValue) \
[UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0x00FF00) >>  8))/255.0 \
blue:((float)((rgbValue & 0x0000FF) >>  0))/255.0 \
alpha:1.0]

@interface ViewController () {
    NSMutableArray *topImagesArray;
    NSMutableArray *bottomImagesArray;
    
    NSMutableArray *topArray;
    NSMutableArray *bottomArray;
    
    NSMutableArray *bottomCellColors;
    
}



@property (weak, nonatomic) IBOutlet UICollectionView *topSectionCollectionView;
@property (weak, nonatomic) IBOutlet UICollectionView *botSectionCollectionView;

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    topArray = [[NSMutableArray alloc] initWithObjects:@"1st cell",@"2nd cell",@"3rd cell",@"4th cell", nil];
    bottomArray = [[NSMutableArray alloc] initWithObjects:@"1st cell",@"2nd cell",@"3rd cell",@"4th cell", nil];
    
    topImagesArray = [[NSMutableArray alloc] initWithObjects:@"food1", @"food2", @"food3", @"food4", nil];
    bottomImagesArray = [[NSMutableArray alloc] initWithObjects:@"pasta1", @"pasta2", @"pasta3", @"pasta4", nil];
    
    bottomCellColors = [[NSMutableArray alloc] initWithObjects: UIColorFromRGB(0xDD4F4F), UIColorFromRGB(0x519EFE), UIColorFromRGB(0xDD4F4F), UIColorFromRGB(0x519EFE), nil];
    
}


- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    if(collectionView == self.topSectionCollectionView){
        TopCollectionViewCell *cell= (TopCollectionViewCell *) [collectionView dequeueReusableCellWithReuseIdentifier:@"topCell" forIndexPath:indexPath];
        [cell.topImageView setImage: [UIImage imageNamed: topImagesArray[indexPath.row]]];
        cell.priceLabel.text = topArray[indexPath.row];
        cell.layer.cornerRadius = 5.0;
        cell.addBtn.layer.cornerRadius = 5.0;
        cell.layer.shadowColor = [UIColor lightGrayColor].CGColor;
        cell.layer.shadowRadius = 2;
        cell.layer.shadowOpacity = 1;
        return cell;
    } else {
        BotCollectionViewCell *cell= (BotCollectionViewCell *) [collectionView dequeueReusableCellWithReuseIdentifier:@"BotCell" forIndexPath:indexPath];
        cell.subLabel.text = bottomArray[indexPath.row];
        [cell.botImageView setImage: [UIImage imageNamed: bottomImagesArray[indexPath.row]]];
        cell.backgroundColor = (UIColor *) bottomCellColors[indexPath.row];
        return cell;
    }
    
    
}

- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    if(collectionView == self.topSectionCollectionView){
        return 4;
    }
    return 4;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    if(collectionView == self.topSectionCollectionView) {
        int collectionViewWidth = collectionView.frame.size.width;
        int collectionGap = 50; //To show 2 blocks and 1/3rd of the third block in default view
        
        return CGSizeMake((collectionViewWidth - collectionGap)/2, collectionView.frame.size.height);
    }
    int collectionViewWidth = collectionView.frame.size.width;
    int collectionGap = 10; //To show 2 blocks and 1/3rd of the third block in default view
    
    return CGSizeMake(((collectionViewWidth - collectionGap)*3)/5, collectionView.frame.size.height);
}

@end
