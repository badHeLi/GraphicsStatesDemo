//
//  ViewController.m
//  GraphicsStatesDemo
//
//  Created by Yu on 12/28/15.
//  Copyright © 2015 Heli. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


/*
 Quartz modifies the results of drawing operations according to the parameters in the current graphics state. The graphics state contains parameters that would otherwise be taken as arguments to drawing routines. Routines that draw to a graphics context consult the graphics state to determine how to render their results. For example, when you call a function to set the fill color, you are modifying a value stored in the current graphics state. Other commonly used elements of the current graphics state include the line width, the current position, and the text font size.
 
 The graphics context contains a stack of graphics states. When Quartz creates a graphics context, the stack is empty. When you save the graphics state, Quartz pushes a copy of the current graphics state onto the stack. When you restore the graphics state, Quartz pops the graphics state off the top of the stack. The popped state becomes the current graphics state.
 
 To save the current graphics state, use the function CGContextSaveGState to push a copy of the current graphics state onto the stack. To restore a previously saved graphics state, use the function CGContextRestoreGState to replace the current graphics state with the graphics state that’s on top of the stack.
 */


- (void)drawRect:(CGRect)rect {
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetRGBStrokeColor(context, 1.0, 1.0, 1.0, 1.0);// 白色
    // And drawing with a blue fill color
    CGContextSetRGBFillColor(context, 0.0, 0.0, 1.0, 1.0);
    // Draw them with a 2.0 stroke width so they are a bit more visible.
    CGContextSetLineWidth(context, 2.0);
    
    //保存以上的状态参数为副本,
    CGContextSaveGState(context);
    
    //改变一个状态 //副本的状态未改变/
    CGContextSetRGBStrokeColor(context, 1.0, 1.0, 0.0, 1.0); // 黄色
    
    //CGContextRestoreGState(context); // 此方法会将当前状态(显示为黄色)替换为副本状态(显示为白色)
    
    CGContextMoveToPoint(context, 100, 100);
    CGContextAddLineToPoint(context, 100, 200);
    CGContextAddLineToPoint(context, 200, 200);
    
    CGContextStrokePath(context);
    
}

@end
