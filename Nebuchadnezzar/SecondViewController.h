//
//  SecondViewController.h
//  Nebuchadnezzar
//
//  Created by Arkadiusz on 14/12/2015.
//  Copyright © 2015 Arkadiusz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "REFrostedViewController.h"
#import "CustomTableViewCell.h"
@interface SecondViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>
- (IBAction)showMenu;
@property (nonatomic, strong) NSMutableArray *myArrayTitles;
@end
