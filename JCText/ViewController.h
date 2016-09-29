//
//  ViewController.h
//  JCText
//
//  Created by Student P_06 on 29/09/16.
//  Copyright © 2016 Jivan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

{
    NSArray *country;
    NSArray *capital;
    NSString *countryName;
    NSString *capitalName;
    
}
@property (strong, nonatomic) IBOutlet UITableView *myTableView;

@end

