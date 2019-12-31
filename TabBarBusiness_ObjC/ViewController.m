//
//  ViewController.m
//  TabBarBusiness_ObjC
//
//  Created by Shivam Patel on 16/12/19.
//  Copyright © 2019 Shivam Patel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.servicesButton.layer.cornerRadius = 5;
    self.portfolioButton.layer.cornerRadius = 5;
    self.aboutUsButton.layer.cornerRadius = 5;
    self.contactUsButton.layer.cornerRadius = 5;
    self.socialLinksButton.layer.cornerRadius = 5;
    
    [self.navigationItem setBackBarButtonItem:[[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil]];
    
    
}


- (IBAction)servicesPressed:(id)sender {
    
    [(UITabBarController *) self.tabBarController setSelectedIndex:2];
}

- (IBAction)portfolioPressed:(id)sender {
    [(UITabBarController *) self.tabBarController setSelectedIndex:3];
}

- (IBAction)aboutUsPressed:(id)sender {
    [(UITabBarController *) self.tabBarController setSelectedIndex:1];
}

- (IBAction)contactUsPressed:(id)sender {
    [(UITabBarController *) self.tabBarController setSelectedIndex:4];
}

- (IBAction)socialLinksPressed:(id)sender {
    //[(UITabBarController *) self.tabBarController setSelectedIndex:];
}
@end
