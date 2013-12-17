//
//  WebViewController.h
//  retryCollectionsView
//
//  Created by Danielle Rodriguez on 12/17/13.
//  Copyright (c) 2013 sdrodrig. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController <UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *spinner;

@end
