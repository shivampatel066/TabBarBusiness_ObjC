//
//  ServicesViewController.h
//  TabBarBusiness_ObjC
//
//  Created by Shivam Patel on 23/12/19.
//  Copyright © 2019 Shivam Patel. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ServicesViewController : UIViewController

@property (strong, nonatomic) NSArray *detailModal;

@property (weak, nonatomic) IBOutlet UIImageView *detailImage;
@property (weak, nonatomic) IBOutlet UILabel *detailTitle;
@property (weak, nonatomic) IBOutlet UITextView *detailDescription;


@end

NS_ASSUME_NONNULL_END
