//
//  ViewController.m
//  WXVideo
//
//  Created by 业王 on 15/10/21.
//  Copyright © 2015年 Johnny. All rights reserved.
//

#import "ViewController.h"
#import "WXPullView.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) WXPullView *pullView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.pullView = [[WXPullView alloc] initWithFrame:CGRectMake((CGRectGetWidth(self.view.frame) / 2) - 25, -64, 50, 30)];
    [self.tableView addSubview:self.pullView];
    
    self.view.backgroundColor = [UIColor blackColor];
    self.tableView.backgroundColor = [UIColor clearColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    cell.backgroundColor = [UIColor clearColor];
    cell.textLabel.text = @"test";
    cell.textLabel.textColor = [UIColor whiteColor];
    return cell;
    
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    [self.pullView animationWith:scrollView.contentOffset.y];
}

@end
