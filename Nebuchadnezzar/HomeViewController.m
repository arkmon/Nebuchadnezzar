//
//  ViewController.m
//  Nebuchadnezzar
//
//  Created by Arkadiusz on 14/12/2015.
//  Copyright © 2015 Arkadiusz. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.labelBtn setEnabled:NO];
    _clockLbl.text=[[NSDate date] description];
    // timer is set & will be triggered each second
    
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)viewWillAppear:(BOOL)animated {
    
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(showTime) userInfo:nil repeats:YES];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)showTime{
    
    NSDate *currDate = [NSDate date];
    NSDateFormatter *dateFormatter1 = [[NSDateFormatter alloc]init];
    [dateFormatter1 setDateFormat:@"HH:mm"];
    
    NSString *dateString = [dateFormatter1 stringFromDate:currDate];
    _clockLbl.text=dateString;
    
    NSDateFormatter *dateFormatter2 = [[NSDateFormatter alloc]init];
    
    [dateFormatter2 setDateFormat:@"EEEE dd MMMM"];
    dateString = [dateFormatter2 stringFromDate:currDate];
    
    _dateLbl.text = dateString;
    
}
- (IBAction)showMenu
{
    // Dismiss keyboard (optional)
    //
    [self.view endEditing:YES];
    [self.frostedViewController.view endEditing:YES];
    
    // Present the view controller
    //
    [self.frostedViewController presentMenuViewController];
}
@end
