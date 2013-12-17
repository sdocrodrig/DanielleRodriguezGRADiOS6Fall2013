//
//  CollectionViewController.h
//  retryCollectionsView
//
//  Created by Danielle Rodriguez on 11/14/13.
//  Copyright (c) 2013 sdrodrig. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyCollectionViewCell.h"

@interface CollectionViewController : UICollectionViewController <UICollectionViewDataSource, UICollectionViewDelegate>
@property (strong, nonatomic) NSMutableArray *recipeArray;
@property (strong, nonatomic) NSMutableArray *recipeLabelArray;
@property (strong, nonatomic) NSMutableArray *countryLabelArray;
- (IBAction)webButtonPressed:(UIBarButtonItem *)sender;

@end
