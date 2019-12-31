//
//  EmailViewController.h
//  TabBarBusiness_ObjC
//
//  Created by Shivam Patel on 30/12/19.
//  Copyright © 2019 Shivam Patel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Accounts/Accounts.h>
#import <MessageUI/MessageUI.h>

NS_ASSUME_NONNULL_BEGIN

@interface EmailViewController : UIViewController <MFMailComposeViewControllerDelegate,UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *emailField;
@property (weak, nonatomic) IBOutlet UITextView *messageView;
@property (weak, nonatomic) IBOutlet UIButton *sendButton;

- (IBAction)dismissKeyboard:(id)sender;


- (IBAction)send:(id)sender;


@end



NS_ASSUME_NONNULL_END
