//
//  ViewController.h
//  Calculator
//
//  Created by 陈一根陈一根 on 16/1/22.
//  Copyright © 2016年 陈一根. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *display;

- (IBAction)digitPressed:(UIButton *)sender;
- (IBAction)operationPressed:(id)sender;
- (IBAction)enterPressed;

@end

