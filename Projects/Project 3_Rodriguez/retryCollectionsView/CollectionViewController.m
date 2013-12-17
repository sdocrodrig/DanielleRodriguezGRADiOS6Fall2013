//
//  CollectionViewController.m
//  retryCollectionsView
//
//  Created by Danielle Rodriguez on 11/14/13.
//  Copyright (c) 2013 sdrodrig. All rights reserved.
//

#import "CollectionViewController.h"
#import "MADCardViewController.h"



@interface CollectionViewController ()

@end

@implementation CollectionViewController{
    UIImage *image;
}

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
    
// Unfortunately, property list is not the best programming solution as it creates an error with the bounds of the collection view. To test with this bug, comment out the arrays in red and uncomment below code. Everything displays as suited.
    
//    NSString *path = [[NSBundle mainBundle] pathForResource:@"recipes" ofType:@"plist"];
    
//    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
//    _recipeLabelArray = [dict objectForKey:@"RecipeName"];
//    _recipeArray = [dict objectForKey:@"ImageName"];
//    _countryLabelArray = [dict objectForKey:@"CountryName"];
    
    _recipeArray = [@[@"Dish2_Congo.png", @"Dish5_Congo.png", @"Dish1_Sudan.png", @"Dish1_Congo.png", @"Dish3_Bhutan.png", @"Dish1_Bhutan.png"] mutableCopy];
    _recipeLabelArray=[@[@"Bukari Fu Fu", @"Ngai Ngai", @"Tamayya", @"Pumpkin Leaves", @"Ema Datshi", @"Buckwheat Dumplings"]mutableCopy];
    _countryLabelArray=[@[@"Congo", @"Congo", @"Sudan", @"Congo", @"Bhutan", @"Bhutan"]mutableCopy];
    
    
    [super viewDidLoad];
    
}



#pragma mark
#pragma mark UICollectionViewDataSource
-(NSInteger)numberOfSectionsInCollectionView: (UICollectionView *)collectionView
{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return _recipeArray.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{

    MyCollectionViewCell *myCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"MyCell" forIndexPath:indexPath];
    
    myCell.recipeCellLabel.text=[_recipeLabelArray objectAtIndex:indexPath.row];
    myCell.countryCellLabel.text=[_countryLabelArray objectAtIndex:indexPath.row];
    
    
    UIImageView *recipeCardImage = (UIImageView *)[myCell viewWithTag:100];
    recipeCardImage.image=[UIImage imageNamed:[_recipeArray objectAtIndex:indexPath.row]];


    
 //   UIImage *image;
 //   int row = [indexPath row];
 //   image = [UIImage imageNamed:_recipeArray[row]];
 //   myCell.imageView.image=image;
    
    return myCell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"RecipeCardSegue"]) {
        NSArray *indexPaths = [self.collectionView indexPathsForSelectedItems];
        MADCardViewController *destViewController = segue.destinationViewController;
        NSIndexPath *indexPath = [indexPaths objectAtIndex:0];
        destViewController.recipeCellImageName = [_recipeArray objectAtIndex:indexPath.row];
        [self.collectionView deselectItemAtIndexPath:indexPath animated:NO];
    }
}


- (IBAction)webButtonPressed:(UIBarButtonItem *)sender {
    [self performSegueWithIdentifier:@"WebSegue" sender:self];
}
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
