//
//  ViewController.h
//  Nebuchadnezzar
//
//  Created by Arkadiusz on 14/12/2015.
//  Copyright © 2015 Arkadiusz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "REFrostedViewController.h"
@interface HomeViewController : UIViewController
- (IBAction)showMenu;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *labelBtn;
@property (weak, nonatomic) IBOutlet UILabel *clockLbl;
@property (weak, nonatomic) IBOutlet UILabel *dateLbl;
@property (weak, nonatomic) IBOutlet UIView *viewStatus;
@property (weak, nonatomic) IBOutlet UIView *viewAlert;
@property (weak, nonatomic) IBOutlet UILabel *lblImpacts;
@property (weak, nonatomic) IBOutlet UILabel *lblNodesOnline;
@property (weak, nonatomic) IBOutlet UILabel *lblAlertMessage;
@property (weak, nonatomic) IBOutlet UILabel *lblStatusMessage;

@end

