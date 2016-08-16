//
//  DXMTagLabelView.m
//  dxmobile
//
//  Created by Liusui on 16/8/2.
//  Copyright © 2016年 Shanghai Elephant Financial Services Co., Ltd. All rights reserved.
//

#import "DXMTagLabelView.h"
#import <NitroUIColorCategories/UIColor+Utils_Nitro.h>

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
static CGFloat const leftMagin = 20;
static CGFloat const topMagin = 20;
static CGFloat const buttonHeight = 32;
static CGFloat const horSpcing = 20;
static CGFloat const verSpcing = 20;

@implementation DXMTagLabelView
- (void)awakeFromNib{
    [super awakeFromNib];
    self.backgroundColor = [UIColor purpleColor];
}

- (void)drawLabelWithArray:(NSArray *)nameArray{
    NSArray *colorArray = @[[UIColor colorFromRGBHex:0xfce5e7],[UIColor colorFromRGBHex:0xfff2e5],[UIColor colorFromRGBHex:0xe5f5fd],[UIColor colorFromRGBHex:0xfffee5],[UIColor colorFromRGBHex:0xe8f7eb]];
    CGPoint recordPoint = CGPointMake(leftMagin, topMagin);
    for (int i = 0; i < nameArray.count; i ++)
    {
        NSString *name = nameArray[i];
        UIButton *btn = [self tagButtonWithFont:[UIFont systemFontOfSize:17] title:name];
        CGRect rect = [name boundingRectWithSize:CGSizeMake(kScreenWidth - leftMagin * 2, buttonHeight)
                                         options:NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading
                                      attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:17]}
                                         context:nil];
        CGFloat yuWidth = kScreenWidth - leftMagin - recordPoint.x;
        if (yuWidth >= rect.size.width) {
            btn.frame =CGRectMake(recordPoint.x, recordPoint.y, rect.size.width, buttonHeight);
        }else{
            btn.frame =CGRectMake(leftMagin, recordPoint.y + horSpcing + rect.size.height, rect.size.width, buttonHeight);
        }
        btn.backgroundColor = colorArray[i % 5];
        [self addSubview:btn];
        recordPoint = CGPointMake(btn.frame.origin.x + rect.size.width + verSpcing, btn.frame.origin.y);
    }
}

- (UIButton *)tagButtonWithFont:(UIFont *)font title:(NSString *)title{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:title forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:14];
    [btn setTitleColor:[UIColor colorFromRGBHex:0xaaaaaa] forState:UIControlStateNormal];
    btn.enabled = NO;
    return btn;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
