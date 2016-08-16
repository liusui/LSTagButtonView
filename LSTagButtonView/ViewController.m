//
//  ViewController.m
//  LSTagButtonView
//
//  Created by Liusui on 16/8/15.
//  Copyright © 2016年 Liusui. All rights reserved.
//

#import "ViewController.h"
#import "DXMTagLabelView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet DXMTagLabelView *tagLabelView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSArray *nameList = @[@"宝宝不哭",@"宝宝你要坚强",@"王宝强",@"傻根其实不傻",@"宝宝不知道宝宝的宝宝是不是宝宝的宝宝",@"许三多",@"不抛弃不放弃",@"天塌了吗",@"并没有"];
    [self.tagLabelView drawLabelWithArray:nameList];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
