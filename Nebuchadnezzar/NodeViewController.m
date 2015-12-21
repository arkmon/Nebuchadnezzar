//
//  NodeViewController.m
//  Nebuchadnezzar
//
//  Created by Arek Dowejko on 20/12/2015.
//  Copyright © 2015 Arkadiusz. All rights reserved.
//

#import "NodeViewController.h"

@interface NodeViewController ()

@end

@implementation NodeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UILabel *nodelbl = [[UILabel alloc] initWithFrame:CGRectMake(80,8,75,30)];
    nodelbl.text = @"Node ID:";
    nodelbl.textColor = [UIColor colorWithRed:0.3255 green:0.3255 blue:0.3255 alpha:1.0];
    [self.navigationController.navigationBar addSubview:nodelbl];
    
    UILabel *nodelblValue = [[UILabel alloc] initWithFrame:CGRectMake(155,8,75,30)];
    nodelblValue.text = @"ABC-001";
    nodelblValue.textColor = [UIColor whiteColor];
    [self.navigationController.navigationBar addSubview:nodelblValue];
    
    UILabel *locationlbl = [[UILabel alloc] initWithFrame:CGRectMake(300,8,75,30)];
    locationlbl.text = @"Location:";
    locationlbl.textColor = [UIColor colorWithRed:0.3255 green:0.3255 blue:0.3255 alpha:1.0];
    [self.navigationController.navigationBar addSubview:locationlbl];
    
    UILabel *locationlblValue = [[UILabel alloc] initWithFrame:CGRectMake(380,8,175,30)];
    locationlblValue.text = @"Isle 1, Rack 1, Front";
    locationlblValue.textColor = [UIColor whiteColor];
    [self.navigationController.navigationBar addSubview:locationlblValue];
    
    UILabel *batterylbl = [[UILabel alloc] initWithFrame:CGRectMake(616,8,75,30)];
    batterylbl.text = @"Battery:";
    batterylbl.textColor = [UIColor colorWithRed:0.3255 green:0.3255 blue:0.3255 alpha:1.0];
    [self.navigationController.navigationBar addSubview:batterylbl];
    
    UILabel *batterylblValue = [[UILabel alloc] initWithFrame:CGRectMake(685,8,75,30)];
    batterylblValue.text = @"Good";
    batterylblValue.textColor = [UIColor whiteColor];
    [self.navigationController.navigationBar addSubview:batterylblValue];
    
    
    [nodelbl setBackgroundColor:[UIColor clearColor]];
    //[self.view addSubview:naviBarObj];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)sectionIndex{
    
    return 1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 87;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *simpleTableIdentifier = @"CustomCell";
    
    
    
    CustomTableViewCell *cell = (CustomTableViewCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    
    if (cell == nil) {
        
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"CustomTableViewCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
        
    }
    return cell;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
