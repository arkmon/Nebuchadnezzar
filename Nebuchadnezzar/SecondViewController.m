//
//  SecondViewController.m
//  Nebuchadnezzar
//
//  Created by Arkadiusz on 14/12/2015.
//  Copyright © 2015 Arkadiusz. All rights reserved.
//

#import "SecondViewController.h"


@interface SecondViewController ()

@end

@implementation SecondViewController


-(void)viewDidLoad{
    
    _myArrayTitles = [[NSMutableArray alloc]init];
    for (int i = 1; i<12; i++) {
        [_myArrayTitles addObject:[NSString stringWithFormat:@"ABC-00%d",i]];
    }

    
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
   
//TODO:  Code here is only for demonstration
    
//    if (indexPath.section == 0) {
        //NSArray *titles = @[];
    
        [cell.titleLabel setText:_myArrayTitles[indexPath.row]];
        //cell.textLabel.text = _myArrayTitles[indexPath.row];
//    }
   
    if (indexPath.row == 2) {
        [cell.severityLabel setText:[NSString stringWithFormat:@"High"]];
        [cell.dismissButon setHidden:NO];
    } else if (indexPath.row == 3){
        [cell.severityLabel setText:[NSString stringWithFormat:@"Low"]];
        [cell.dismissButon setHidden:NO];
    }
    
    //Cell settings:
    
    if ([cell.severityLabel.text isEqualToString:@"High"]) {
        [cell setBackgroundColor:[UIColor colorWithRed:0.9294 green:0.0471 blue:0.2039 alpha:1.0]];
    } else if ([cell.severityLabel.text isEqualToString:@"Low"]){
        [cell setBackgroundColor:[UIColor colorWithRed:0.9686 green:0.7216 blue:0.1294 alpha:1.0]];
    }
    

    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)sectionIndex
{
    return 10;
}
@end
