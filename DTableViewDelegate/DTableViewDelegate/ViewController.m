//
//  ViewController.m
//  DTableViewDelegate
//
//  Created by 黄铭达 on 2017/5/20.
//  Copyright © 2017年 黄铭达. All rights reserved.
//

#import "ViewController.h"
#import "DTableDelegate.h"
#import "CustomCell.h"
@interface ViewController ()

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *data;
@property (nonatomic, strong) DTableDelegate *delegator;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    [self.view addSubview:self.tableView];
    self.tableView.separatorStyle = NO;
    __weak typeof(self) wself = self;
    self.delegator = [[DTableDelegate alloc] initWithTableViewData:^NSArray *{
        return wself.data;
    }];
    
    self.tableView.delegate = self.delegator;
    self.tableView.dataSource = self.delegator;
    
    [self build];
}


- (void)build {
    NSArray *data = @[
                      @{
                          HeaderHeight :@(30),
                          RowData : @[
                                  @{
                                      CellClass     : @"CustomCell",
                                      Data          : @{
                                              @"iamge"    : @"avatar.JPG",
                                              @"account"  : @"123456",
                                              @"location" : @"你猜",
                                              @"nickName" : @"minami"
                                              },
                                      RowHeight     : @(100),
                                      },
                                  ],
                          
                          },
                      @{
                          HeaderHeight :@(30),
                          RowData : @[
                                  @{
                                      Title         : @"标题",
                                      DetailTitle   : @"副标题",
                                      ImageName     : @"avatar.JPG",
                                      ShowAccessory : @(YES),
                                      RowHeight     : @(60),
                                      SeparatedLeftEdge : @(100),
                                      ForbidSelect  : @(YES),
                                      },
                                  @{
                                      Title         : @"标题",
                                      DetailTitle   : @"副标题",
                                      ImageName     : @"avatar.JPG",
                                      ShowAccessory : @(YES),
                                      RowHeight     : @(60),
                                      CellAction    : @"actionName",
                                      },
                                  ],
                          
                          },
                      @{
                          HeaderHeight :@(30),
                          RowData : @[
                                  @{
                                      Title         : @"标题",
                                      ShowAccessory : @(YES),
                                      RowHeight     : @(60),
                                      CellAction    : @"actionName",
                                      },
                                  @{
                                      Title         : @"标题",
                                      ShowAccessory : @(YES),
                                      CellAction    : @"actionName",
                                      },
                                  ],
                          
                          },
                      ];
    self.data = [DTableSection sectionsWithData:data];
    [self.tableView reloadData];
}


- (void)actionName {
    NSLog(@"点击了cell");
}

- (void)actionName:(NSDictionary *)dic{
    NSLog(@"点击了cell %@",dic);
}
@end
