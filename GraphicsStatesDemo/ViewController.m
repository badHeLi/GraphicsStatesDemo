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
