//
//  ViewController.m
//  JCText
//
//  Created by Student P_06 on 29/09/16.
//  Copyright © 2016 Jivan. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    country = [[NSArray alloc]initWithObjects:@"India",@"Japan",@"Nepal1",@"America",@"Australia",@"Belgium",@"France", nil];
    
    capital =[[NSArray alloc]initWithObjects:@"Delhi",@"Tokio",@"Kathmandu",@"Washington",@"Canberra",@"Brussels",@"Paris",nil];
    
    
    _myTableView.delegate = self;
    
    _myTableView.dataSource = self;
    
    [self myTableView];
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return  1;
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    
    return country.count;
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"City"];
    
    
    countryName = [country objectAtIndex:indexPath.row];
    
    
    cell.imageView.image = [UIImage imageNamed:countryName];
    
    
    cell.textLabel.text = countryName;
    
    return cell;
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    SecondViewController *secondView = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];

    if (indexPath.section == 0) {
        
    
    
        countryName = [country objectAtIndex:indexPath.row];

        [secondView.myImage setImage:[UIImage imageNamed:countryName]];
//        secondView.myImage =[UIImage imageNamed:countryName];
        
       secondView.countryLabel = countryName = [country objectAtIndex:indexPath.row];

    
        
       secondView.capitalLabel = capitalName = [capital objectAtIndex:indexPath.row];

    }
    
    [self.navigationController pushViewController:secondView animated:YES];

}

@end
