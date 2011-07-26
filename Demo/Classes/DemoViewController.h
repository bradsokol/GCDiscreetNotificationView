//
//  DemoViewController.h
//  Demo
//
//  Created by Guillaume Campagna on 09-12-28.
//  Copyright LittleKiwi 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GCDiscreetNotificationView;

@interface DemoViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, retain) IBOutlet UISwitch *activitySwitch;
@property (nonatomic, retain) IBOutlet UISwitch *topBottomSwitch;
@property (nonatomic, retain) IBOutlet UITextField *textField;
@property (nonatomic, retain) IBOutlet UITextField *secondaryTextField;
@property (nonatomic, retain) GCDiscreetNotificationView *notificationView;

- (IBAction) changeActivity:(id) sender;
- (IBAction) changeTopBottom:(id) sender;
- (IBAction) show;
- (IBAction) hide;
- (IBAction) hideAfter1sec;

@end

