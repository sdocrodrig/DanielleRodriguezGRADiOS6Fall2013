//
//  MADCardViewController.h
//  retryCollectionsView
//
//  Created by Danielle Rodriguez on 12/17/13.
//  Copyright (c) 2013 sdrodrig. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>


@interface MADCardViewController : UIViewController <MFMailComposeViewControllerDelegate>
@property (weak, nonatomic) NSString *recipeCellImageName;
@property (weak, nonatomic) IBOutlet UIImageView *recipeViewImage;
//e-mail
- (IBAction)actionButtonPressed:(UIBarButtonItem *)sender;
@property (weak, nonatomic) IBOutlet UIImageView *cardImage;
@property (weak, nonatomic) IBOutlet UILabel *cardName;

@end
