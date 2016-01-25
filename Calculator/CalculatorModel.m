//
//  CalculatorModel.m
//  Calculator
//
//  Created by 陈一根陈一根 on 16/1/23.
//  Copyright © 2016年 陈一根. All rights reserved.
//

#import "CalculatorModel.h"

@interface CalculatorModel()
@property (nonatomic,strong) NSMutableArray * operandStack;
@end

@implementation CalculatorModel

@synthesize  operandStack = _operandStack;

-(NSMutableArray *)operandStack
{
    if (_operandStack == nil) {
        _operandStack = [[NSMutableArray alloc]init];
    }
    return _operandStack;
}
//-(void) setOperandStack:(NSMutableArray *)operandStack
//{
//    _operandStack = operandStack;
//}
-(void) pushOperand:(double)operand
{
    [self.operandStack addObject:[NSNumber numberWithDouble:operand]];
}
-(double) popOperand
{
    NSNumber * operandObjective = [self.operandStack lastObject];
    if (operandObjective != nil) {
        [self.operandStack removeLastObject];
    }
    return operandObjective.doubleValue;
}
-(double) performOperation:(NSString *)operation
{
    double result = 0;
//    calculate result
    if ([operation isEqualToString:@"+"]) {
        result = [self popOperand] + [self popOperand];
    } else if ([@"*"isEqualToString:operation]){
        result = [self popOperand] + [self popOperand];
    }else if ([@"/"isEqualToString:operation]){
        result = [self popOperand] / [self popOperand];
    }else if ([@"-"isEqualToString:operation]){
        result = [self popOperand] - [self popOperand];
    }
    [self pushOperand:result];
    return result;
}
@end
