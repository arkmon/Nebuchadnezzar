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

@implementation HomeViewController{
    int num;
}

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
- (IBAction)refresh:(id)sender {
    
    switch (num) {
        case 0:
            [_viewStatus setBackgroundColor:[UIColor colorWithRed:0.9686 green:0.7216 blue:0.1294 alpha:1.0]];
            [_lblStatusMessage setText:@"CAUTION"];
            [_viewAlert setBackgroundColor:[UIColor colorWithRed:0.9686 green:0.4392 blue:0.4314 alpha:1.0]];
            [_lblAlertMessage setTextColor:[UIColor whiteColor]];
            [_lblAlertMessage setText:@"2 OFFLINE"];
            break;
            
        case 1:
            [_viewStatus setBackgroundColor:[UIColor colorWithRed:0.9294 green:0.0471 blue:0.2039 alpha:1.0]];
            [_lblStatusMessage setText:@"SEVERE"];
            [_lblAlertMessage setText:@"IMPACTS"];
            break;
        
        default:
            
            break;
    }
    
    num++;
}
@end
