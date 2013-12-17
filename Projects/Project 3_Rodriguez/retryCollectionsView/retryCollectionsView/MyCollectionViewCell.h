//
//  MyCollectionViewCell.h
//  retryCollectionsView
//
//  Created by Danielle Rodriguez on 11/14/13.
//  Copyright (c) 2013 sdrodrig. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCollectionViewCell : UICollectionViewCell
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *recipeCellLabel;
@property (weak, nonatomic) IBOutlet UILabel *countryCellLabel;

@end
