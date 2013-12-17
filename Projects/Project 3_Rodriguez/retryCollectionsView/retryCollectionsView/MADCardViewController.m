//
//  MADCardViewController.m
//  retryCollectionsView
//
//  Created by Danielle Rodriguez on 12/17/13.
//  Copyright (c) 2013 sdrodrig. All rights reserved.
//

#import "MADCardViewController.h"




@interface MADCardViewController (){
    UIImage *image;
}

@end

@implementation MADCardViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.recipeViewImage.image = [UIImage imageNamed:self.recipeCellImageName];
    
//    self.title = recipe.name;
    if (_recipeViewImage.image==[UIImage imageNamed:@"Dish2_Congo.png"]){
        self.cardImage.image=[UIImage imageNamed:@"FuFu.png"];
        self.cardName.text=@"Bukari Fu Fu";
    }
    else if (_recipeViewImage.image==[UIImage imageNamed:@"Dish5_Congo.png"]){
        self.cardImage.image=[UIImage imageNamed:@"NgaiNgai.png"];
        self.cardName.text=@"Ngai Ngai w/ Fish";
    }
    else if (_recipeViewImage.image==[UIImage imageNamed:@"Dish1_Sudan.png"]){
        self.cardImage.image=[UIImage imageNamed:@"Tamayya.png"];
        self.cardName.text=@"Tamayya";
    }
    else if (_recipeViewImage.image==[UIImage imageNamed:@"Dish1_Congo.png"]){
        self.cardImage.image=[UIImage imageNamed:@"PumpkinLeaves.png"];
        self.cardName.text=@"Pumpkin Leaves";
    }
    else if (_recipeViewImage.image==[UIImage imageNamed:@"Dish3_Bhutan.png"]){
        self.cardImage.image=[UIImage imageNamed:@"EmaDatshi.png"];
        self.cardName.text=@"Ema Datshi";
    }
    else if (_recipeViewImage.image==[UIImage imageNamed:@"Dish1_Bhutan.png"]){
        self.cardImage.image=[UIImage imageNamed:@"BuckwheatDumplings.png"];
        self.cardName.text=@"Buckwheat Dumplings";
    }
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionButtonPressed:(UIBarButtonItem *)sender {

    NSString *emailTitle=@"Support SPICE";
    NSString *messageBody=@"<h1>I recently tried your recipe! This is what I thought...</h1>";
    NSArray *toRecipients = [NSArray arrayWithObject:@"sdrodrig@colorado.edu"];
    
    MFMailComposeViewController *mc = [[MFMailComposeViewController alloc]init];
    mc.mailComposeDelegate=self;
    [mc setSubject:emailTitle];
    [mc setMessageBody:messageBody isHTML:YES];
    [mc setToRecipients:toRecipients];
    
    [self presentViewController:mc animated:YES completion:NULL];
    
//    UIActionSheet *actionSheet=[[UIActionSheet alloc]initWithTitle:nil delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitles:@"Share Recipe", @"Contact Chef", nil];
 //   [actionSheet showInView:_view];
}

-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    switch(result)
    {
        case MFMailComposeResultCancelled: NSLog(@"Mail cancelled");
            break;
        case MFMailComposeResultSaved:NSLog(@"Mail saved");
            break;
        case MFMailComposeResultSent:
            NSLog(@"Mail sent");
        case MFMailComposeResultFailed: NSLog(@"Mail sent failure: %@", [error localizedDescription]);
            break;
        default:
            break;
            
            
        [self dismissViewControllerAnimated:YES completion:NULL];
    }
}



#pragma mark - action sheet  delegate method
//-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
//    if(buttonIndex==0)
    //{
        //add facebook share action
    //}
    //esle if (buttonIndex==1)
    //{
        //add send email action 
  //  }
//}
@end
