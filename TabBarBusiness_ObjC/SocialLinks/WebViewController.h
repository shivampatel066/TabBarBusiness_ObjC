//
//  WebViewController.h
//  TabBarBusiness_ObjC
//
//  Created by Shivam Patel on 31/12/19.
//  Copyright © 2019 Shivam Patel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface WebViewController : UIViewController <WKNavigationDelegate>

@property (strong,nonatomic) NSArray *detailModal;

@property (weak, nonatomic) IBOutlet WKWebView *webView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;

- (IBAction)refresh:(id)sender;
- (IBAction)stop:(id)sender;

- (IBAction)rewind:(id)sender;
- (IBAction)forward:(id)sender;


@end

NS_ASSUME_NONNULL_END
