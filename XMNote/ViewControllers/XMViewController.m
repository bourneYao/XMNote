//
//  XMViewController.m
//  XMNote
//
//  Created by Bibo Yao on 13-4-13.
//  Copyright (c) 2013年 Bibo Yao. All rights reserved.
//

#import "XMViewController.h"
#import "XMNewNoteViewController.h"

@interface XMViewController ()

@end

@implementation XMViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        
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
    
    //--------------------
    // 增加一个UITableView
    //--------------------
    UITableView *myTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, 320, 415) style:UITableViewStylePlain];
    myTableView.delegate       = self;
    myTableView.dataSource     = self;
    myTableView.backgroundView = nil;
    [self.view addSubview:myTableView];
    [myTableView release];
}

#pragma mark - TableView 
//===========================
// 设置每个cell的内容
//===========================
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *strCellID = @"CellID";
    UITableViewCell *cell = nil;
    cell = [tableView dequeueReusableCellWithIdentifier:strCellID ];
    
    if (cell == nil)
    {
        cell = [[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:strCellID]autorelease];
        
        //---------------
        // 创建一个lable
        //---------------
        UILabel *labName = [[UILabel alloc]initWithFrame:CGRectMake(10, 10, 60, 20)];
        labName.text = @"你好";
        [cell addSubview:labName];
        [labName release];
    }
    return cell;
}

//===========================
// 设置返回cell的个数
//===========================
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

//===========================
// 设置返回cell的高度
//===========================
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 40;
}

//===========================
// 触发所点击按钮的对应事件
//===========================
- (void)btnPressed:(id)sender
{
    UIButton *btn = (UIButton *)sender;
    if (btn.tag == 0x101)
    {
        XMNewNoteViewController *newNoteViewController = [[XMNewNoteViewController alloc]init];
        UIBarButtonItem *btnItemBack = [[UIBarButtonItem alloc]initWithTitle:@"返回"
                                                                       style:UIBarButtonItemStyleBordered
                                                                      target:nil
                                                                      action:nil];
        [self.navigationItem setBackBarButtonItem:btnItemBack];
        [btnItemBack release];
        newNoteViewController.title = @"新建笔记";
        [self.navigationController pushViewController:newNoteViewController animated:YES];
        [newNoteViewController release];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
