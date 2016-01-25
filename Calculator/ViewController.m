//
//  ViewController.m
//  Calculator
//
//  Created by 陈一根陈一根 on 16/1/22.
//  Copyright © 2016年 陈一根. All rights reserved.
//

#import "ViewController.h"
#import "CalculatorModel.h"

@interface ViewController ()
@property  (nonatomic) BOOL userIsInTheMiddleOfEnteringANumber;
@property (nonatomic,strong) CalculatorModel * model;
@end

@implementation ViewController
@synthesize display = _display;
@synthesize userIsInTheMiddleOfEnteringANumber = _userIsInTheMiddleOfEnteringANumber;
@synthesize model = _model;

-(CalculatorModel *) model{
    if (!_model) {
        _model = [[CalculatorModel alloc]init];
    }
    return _model;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)digitPressed:(UIButton *)sender {
    NSString * digit = sender.currentTitle; //[sender currentTitle];
    
//    UILabel * myDisplay = self.display; //[self  display];
//    NSString * currentText = myDisplay.text;//[myDisplay text];
//    NSString * newText = [currentText stringByAppendingString:digit];
//    myDisplay.text = newText; //[myDisplay setText:newText];
   
    if (self.userIsInTheMiddleOfEnteringANumber) {
        self.display.text = [self.display.text stringByAppendingString:digit];
    } else {
        self.display.text = digit;
        self.userIsInTheMiddleOfEnteringANumber = YES;
    }
    
}

- (IBAction)operationPressed:(UIButton *)sender {
    if (self.userIsInTheMiddleOfEnteringANumber) {
        [self enterPressed];
    }
    double result = [self.model performOperation:sender.currentTitle];
    NSString * resultString = [NSString stringWithFormat:@"%g",result];
    self.display.text = resultString;
}

- (IBAction)enterPressed {
    [self.model pushOperand: [self.display.text doubleValue]];
    self.userIsInTheMiddleOfEnteringANumber = NO;
}
@end
