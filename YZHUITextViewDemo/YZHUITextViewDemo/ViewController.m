//
//  ViewController.m
//  YZHUITextViewDemo
//
//  Created by yuan on 2018/8/19.
//  Copyright © 2018年 yuan. All rights reserved.
//

#import "ViewController.h"
#import "YZHUITextView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self _setupChildView];
}

-(void)_setupChildView
{
    CGFloat w = SCREEN_WIDTH * 0.8;
    CGFloat h = 200;
    CGFloat x = (SCREEN_WIDTH - w)/2;
    CGFloat y = 20;
    YZHUITextView *textView1 = [[YZHUITextView alloc] init];
    textView1.backgroundColor = GROUP_TABLEVIEW_BG_COLOR;
    textView1.font = FONT(16);
    textView1.frame = CGRectMake(x, y, w, h);
    textView1.placeholder = @"placeholder";
    [self.view addSubview:textView1];
    
    y = CGRectGetMaxY(textView1.frame) + 10;
    h = 40;
    CGRect frame = CGRectMake(x, y, w, h);
    YZHUITextView *textView2 = [[YZHUITextView alloc] initWithFrame:frame];
    textView2.backgroundColor = GROUP_TABLEVIEW_BG_COLOR;
    textView2.font = FONT(16);
//    textView2.maxLimit = [[YZHUITextViewLimit alloc] initWithLimitType:NSTextViewLimitTypeHeight limitValue:@(100)];
    textView2.maxLimit = [[YZHUITextViewLimit alloc] initWithLimitType:NSTextViewLimitTypeLines limitValue:@(3)];
    textView2.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"根据textView内容扩展textView" attributes:@{NSForegroundColorAttributeName:RED_COLOR}];
    [self.view addSubview:textView2];
    NSDictionary *attr = nil;//@{NSFontAttributeName:textView2.font};
//    textView2.attributedText = [[NSAttributedString alloc] initWithString:@"根据textView内容扩展textView根据textView内容扩展textView根据textView内容扩展textView根据textView内容扩展textView根据textView内容扩展textView根据textView内容扩展textView根据textView内容扩展textView根据textView内容扩展textView根据textView内容扩展textView根据textView内容扩展textView" attributes:attr];
//    textView2.text = @"根据textView内容扩展textView根据textView内容扩展textView根据textView内容扩展textView根据textView内容扩展textView根据textView内容扩展textView根据textView内容扩展textView根据textView内容扩展textView根据textView内容扩展textView根据textView内容扩展textView根据textView内容扩展textView";
    
    textView2.textSizeChangeBlock = ^(YZHUITextView *textView, CGSize textSize) {
        [self _updateTextView:textView textSize:textSize];
    };
}

-(void)_updateTextView:(YZHUITextView*)textView textSize:(CGSize)textSize
{
//    CGFloat h = textSize.height;
//    h = MAX(h, 40);
//    h = MIN(h, 100);
//
//    CGRect frame = textView.frame;
//    frame.size.height = h;
//    textView.frame = frame;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
