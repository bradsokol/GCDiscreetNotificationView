//
//  DemoViewController.m
//  Demo
//
//  Created by Guillaume Campagna on 09-12-28.
//  Copyright LittleKiwi 2009. All rights reserved.
//

#import "DemoViewController.h"
#import "GCDiscreetNotificationView.h"

@implementation DemoViewController

@synthesize activitySwitch;
@synthesize topBottomSwitch;
@synthesize textField;
@synthesize secondaryTextField;
@synthesize notificationView;

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
    
    notificationView = [[GCDiscreetNotificationView alloc] initWithText:self.textField.text 
                                                          secondaryText:self.secondaryTextField.text
                                                           showActivity:self.activitySwitch.on 
                                                     inPresentationMode:self.topBottomSwitch.on ?  GCDiscreetNotificationViewPresentationModeTop : GCDiscreetNotificationViewPresentationModeBottom
                                                                 inView:self.view];
}

- (void) show {
    [self.notificationView show:YES];
}

- (void) hide {
    [self.notificationView hide:YES];
}

- (IBAction) hideAfter1sec {
    [self.notificationView hideAnimatedAfter:1.0];
}

- (void) changeActivity:(id)sender {
    [self.notificationView setShowActivity:self.activitySwitch.on animated:YES];
}

- (void) changeTopBottom:(id)sender {
    [self.notificationView setPresentationMode:self.topBottomSwitch.on ?  GCDiscreetNotificationViewPresentationModeTop : GCDiscreetNotificationViewPresentationModeBottom];
}

- (BOOL) textFieldShouldReturn:(UITextField *)aTextField {
    if (aTextField == textField) {
        [self.textField resignFirstResponder];
        [self.notificationView setTextLabel:self.textField.text animated:YES];
    }
    else {
        [self.secondaryTextField resignFirstResponder];
        [self.notificationView setSecondaryTextLabel:self.secondaryTextField.text animated:YES];
    }
    return NO;
}

- (void)dealloc {
    [activitySwitch release];
    activitySwitch = nil;
    [topBottomSwitch release];
    topBottomSwitch = nil;
    [textField release];
    textField = nil;
    [secondaryTextField release];
    secondaryTextField = nil;
    [notificationView release];
    notificationView = nil;
    
    [super dealloc];
}

@end
