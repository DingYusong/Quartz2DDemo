//
//  CVDrawView.m
//  Quartz2DTest
//
//  Created by 丁玉松 on 15/12/25.
//  Copyright © 2015年 Beijing Yingyan Internet Co., Ltd. All rights reserved.
//

#import "CVDrawView.h"

@implementation CVDrawView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
//    [self drawLine];
    [self drawLine2];
    
}


-(void)drawLine
{
    //1.获取图形上下文
    CGContextRef ctx=UIGraphicsGetCurrentContext();
    //2.绘图（画线）
    //设置起点
    CGContextMoveToPoint(ctx, 20, 20);
    //设置终点
    CGContextAddLineToPoint(ctx, 200, 300);
    //渲染
    CGContextStrokePath(ctx);
}


-(void)drawLine2
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathMoveToPoint(path, NULL, 20, 20);
    CGPathAddLineToPoint(path, NULL, 50, 50);
    CGContextAddPath(ctx, path);
    CGContextStrokePath(ctx);
    CGPathRelease(path);
}


-(void)draw3
{
    
}


@end
