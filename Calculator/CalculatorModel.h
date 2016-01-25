//
//  CalculatorModel.h
//  Calculator
//
//  Created by 陈一根陈一根 on 16/1/23.
//  Copyright © 2016年 陈一根. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorModel : NSObject
-(void) pushOperand:(double) operand;
-(double) performOperation : (NSString * ) operation;

@end
