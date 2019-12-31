//
//  ViewController.h
//  TabBarBusiness_ObjC
//
//  Created by Shivam Patel on 16/12/19.
//  Copyright © 2019 Shivam Patel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *servicesButton;
@property (weak, nonatomic) IBOutlet UIButton *portfolioButton;
@property (weak, nonatomic) IBOutlet UIButton *aboutUsButton;
@property (weak, nonatomic) IBOutlet UIButton *contactUsButton;
@property (weak, nonatomic) IBOutlet UIButton *socialLinksButton;




- (IBAction)servicesPressed:(id)sender;
- (IBAction)portfolioPressed:(id)sender;
- (IBAction)aboutUsPressed:(id)sender;
- (IBAction)contactUsPressed:(id)sender;
- (IBAction)socialLinksPressed:(id)sender;

@end

