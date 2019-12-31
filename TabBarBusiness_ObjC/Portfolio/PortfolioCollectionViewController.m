//
//  PortfolioCollectionViewController.m
//  TabBarBusiness_ObjC
//
//  Created by Shivam Patel on 23/12/19.
//  Copyright © 2019 Shivam Patel. All rights reserved.
//

#import "PortfolioCollectionViewController.h"
#import "PortfolioCollectionViewCell.h"

@interface PortfolioCollectionViewController ()

@end

@implementation PortfolioCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
     
    array = @[@"Image1"
              ,@"Image2"
              ,@"Image3"
              ,@"Image4"
              ,@"Image5"
              ,@"Image1"
              ,@"Image2"
              ,@"Image3"
              ,@"Image4"
              ,@"Image5"
              ,@"Image1"
              ,@"Image2"
              ,@"Image3"
              ,@"Image4"
              ,@"Image5"];
    
    self.collectionView.backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Background"]];
     
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return array.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    PortfolioCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    // Configure the cell
    cell.cellImage.image = [UIImage imageNamed:array[indexPath.row]];
    cell.cellImage.layer.borderWidth = 5.0;
    [cell.cellImage.layer setBorderColor:UIColor.whiteColor.CGColor];
    return cell;
    
    
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(nonnull UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
 
    float width = UIScreen.mainScreen.bounds.size.width;
    float heightCell = 0;
    float widthCell = 0;
    
    //iPhone x 6,6s,7,8
    if (width == 375) {
        
        widthCell = 172;
        heightCell = 125;
        
    }
    //iPhone 6+,6s+,7+,8+
    else if (width == 414) {
        
        widthCell = 192;
        heightCell = 125;
        
    }
    //iPhone every other
    else if (width == 320) {
        
        widthCell = 145;
        heightCell = 125;
        
    } else {
        widthCell = 192;
        heightCell = 125;
    }
    
    
    return CGSizeMake(widthCell, heightCell);
        
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
