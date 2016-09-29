//
//  SecondViewController.m
//  JCText
//
//  Created by Student P_06 on 29/09/16.
//  Copyright © 2016 Jivan. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    [self.myImage setImage:[UIImage imageNamed:self.countryLabel]];

    self.labelCountry.text = self.countryLabel;
    
    self.labelCapital.text = self.capitalLabel;
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
