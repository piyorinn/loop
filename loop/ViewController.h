//
//  ViewController.h
//  loop
//
//  Created by Nakazawa Namiko on 2014/12/14.
//  Copyright (c) 2014年 Nakazawa Yuri. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

{
    IBOutlet UILabel *resultLabel1;
    IBOutlet UILabel *resultLabel2;
    IBOutlet UILabel *resultLabel3;
    IBOutlet UILabel *resultLabel4;
    IBOutlet UILabel *resultLabel5;
    IBOutlet UIImageView *imageview;
    int password;
    int index;
    UIImage *imgarry[1];
    
    int random_number;
    int keisann;
    
    
    
    
}

-(IBAction)start;


@end

