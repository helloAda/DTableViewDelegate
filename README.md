# DTableViewDelegate

简单的使用@{key:value}方式来构建UITableView。
对于有限个的，布局简单的cell来说比较方便。

###### 注：对于无数个布局复杂cell也可以使用，但是就使用复杂了，没有必要。

### 使用如下：
```
                  @{
                      HeaderHeight : @(30),
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
                      HeaderHeight : @(30),
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
```

### 效果图
![效果图](https://github.com/helloAda/DTableViewDelegate/blob/master/DTableViewDelegate/DTableViewDelegate/default.png)
