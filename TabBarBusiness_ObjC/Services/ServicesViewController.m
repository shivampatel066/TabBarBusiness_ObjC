//
//  ServicesViewController.m
//  TabBarBusiness_ObjC
//
//  Created by Shivam Patel on 23/12/19.
//  Copyright © 2019 Shivam Patel. All rights reserved.
//

#import "ServicesViewController.h"

@interface ServicesViewController ()

@end

@implementation ServicesViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.navigationItem.title = self.detailModal[0];
    self.detailTitle.text = self.detailModal[0];
    self.detailImage.image = [UIImage imageNamed:self.detailModal[1]];
    self.detailDescription.text = self.detailModal[2];


}



@end
