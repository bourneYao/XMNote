//
//  XMNewNoteViewController.m
//  XMNote
//
//  Created by Bibo Yao on 13-4-20.
//  Copyright (c) 2013年 Bibo Yao. All rights reserved.
//

#import "XMNewNoteViewController.h"

@interface XMNewNoteViewController ()

@end

@implementation XMNewNoteViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //------------------------
    // 在导航栏右边创建一个添加按钮
    //------------------------
    UIBarButtonItem *btnItemRight  = [[UIBarButtonItem alloc]initWithTitle:@"添加"
                                                                     style:UIBarButtonItemStylePlain
                                                                    target:self
                                                                    action:@selector(btnPressed:)];
    btnItemRight.tag = 0x101;
    
    self.navigationItem.rightBarButtonItem = btnItemRight;
    [btnItemRight release];
    
    //-------------------
    // 创建一个视图
    //-------------------
    UIView *myView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 370)];
    myView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:myView];
    
    myTextView = [[UITextView alloc]initWithFrame:CGRectMake(0, 0, 320, 300)];
    myTextView.backgroundColor = [UIColor redColor];
    [myView addSubview:myTextView];
    [myTextView release];
    
    [myView release];
    
    
}

//===========================
// 触发所点击按钮的对应事件
//===========================
- (void)btnPressed:(id)sender
{
    UIButton *btn = (UIButton *)sender;
    if (btn.tag == 0x101)
    {
        myTextView.text = @"";
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
