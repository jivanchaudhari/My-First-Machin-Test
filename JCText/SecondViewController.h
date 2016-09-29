//
//  SecondViewController.h
//  JCText
//
//  Created by Student P_06 on 29/09/16.
//  Copyright © 2016 Jivan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController


@property (strong, nonatomic) IBOutlet UIImageView *myImage;
@property (strong, nonatomic) IBOutlet UILabel *labelCountry;
@property (strong, nonatomic) IBOutlet UILabel *labelCapital;
@property (weak,nonatomic) UIImage *images;
@property (weak,nonatomic) UILabel *countryLabel;
@property (weak,nonatomic) UILabel *capitalLabel;


@end
