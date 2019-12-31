//
//  AboutUsViewController.m
//  TabBarBusiness_ObjC
//
//  Created by Shivam Patel on 23/12/19.
//  Copyright © 2019 Shivam Patel. All rights reserved.
//

#import "AboutUsViewController.h"

@interface AboutUsViewController ()

@end

@implementation AboutUsViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    self.aboutUsButton.layer.cornerRadius = 5;
    

}



- (IBAction)aboutUsButtonPressed:(id)sender {
    
    [(UITabBarController *) self.tabBarController setSelectedIndex:4];
    
}
@end
