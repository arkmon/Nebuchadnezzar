//
//  RootViewController.m
//  Nebuchadnezzar
//
//  Created by Arkadiusz on 14/12/2015.
//  Copyright © 2015 Arkadiusz. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)awakeFromNib
{
    self.contentViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"contentController"];
    self.menuViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"menuController"];
}

@end
