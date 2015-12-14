//
//  NavigationController.h
//  Nebuchadnezzar
//
//  Created by Arkadiusz on 14/12/2015.
//  Copyright © 2015 Arkadiusz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "REFrostedViewController.h"
@interface NavigationController : UINavigationController
- (void)panGestureRecognized:(UIPanGestureRecognizer *)sender;
@end
