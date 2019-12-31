//
//  EmailViewController.m
//  TabBarBusiness_ObjC
//
//  Created by Shivam Patel on 30/12/19.
//  Copyright © 2019 Shivam Patel. All rights reserved.
//

#import "EmailViewController.h"

@interface EmailViewController ()

@end

@implementation EmailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.messageView.layer.cornerRadius = 5;
    self.sendButton.layer.cornerRadius = 5;
    
    self.navigationItem.title = @"Email Us";
    
    [self.navigationItem setBackBarButtonItem:[[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil]];
    


}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    
    if ([text rangeOfCharacterFromSet:[NSCharacterSet newlineCharacterSet]].location == NSNotFound) {
        return YES;
    }
    [textView resignFirstResponder];
    return NO;
}

- (IBAction)dismissKeyboard:(id)sender {
    
    [self resignFirstResponder];
}

- (IBAction)send:(id)sender {
    
    MFMailComposeViewController *composer = [[MFMailComposeViewController alloc] init];
    [composer setMailComposeDelegate:self];
    
    if ([MFMailComposeViewController canSendMail]) {
        
        [composer setToRecipients:@[@"abc@123.com"]];
        [composer setSubject:@"Message From My App !!"];
        [composer setMessageBody:[NSString stringWithFormat:@"Name: %@\nEmail: %@\n\nMessage: %@",self.nameField.text,self.emailField.text,self.messageView.text] isHTML:false];
        
        [self presentViewController:composer animated:true completion:nil];
    } else {
        NSLog(@"Cant send the mail");
    }
}

-(void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error {
    [self dismissViewControllerAnimated:true completion:nil];
}

@end
