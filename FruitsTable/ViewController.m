//
//  ViewController.m
//  FruitsTable
//
//  Created by Diana on 10/9/15.
//  Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    AppDelegate *appD = [[UIApplication sharedApplication]
                         delegate];
    return [[[appD basket] basketOfFruit] count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *strId = @"strID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:strId];
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:strId];
    }
    
    UIImage *image = [UIImage imageNamed:@"watermelon.jpg"];
    cell.imageView.image = image;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%d",
                                 indexPath.row + 1];
    
    AppDelegate *appD = [[UIApplication sharedApplication]
                         delegate];
    cell.textLabel.text = [[[[appD basket] basketOfFruit] objectAtIndex: indexPath.row] description];
    cell.textLabel.font = [UIFont boldSystemFontOfSize:30];

    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 0;
}

-(NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    return indexPath;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    AppDelegate *appD = [[UIApplication sharedApplication]
                        delegate];
    NSString *rowValue = [[[[appD basket] basketOfFruit] objectAtIndex: indexPath.row] description];
    NSMutableArray * array = [[appD basket] basketOfFruit];
    int s = [[[array objectAtIndex: indexPath.row] seedCount] intValue];
    
    NSString *message = [[NSString alloc] initWithFormat:
                         @"%@, seeds = %d",
                         rowValue, s];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle: @"Row is selected!" message:message delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    
    [alert show];
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 70;
}

@end
