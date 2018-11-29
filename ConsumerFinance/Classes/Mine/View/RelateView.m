//
//  RelateView.m
//  ConsumerFinance
//
//  Created by Shuai on 2018/7/26.
//  Copyright © 2018年 ConsumerFinance. All rights reserved.
//

#import "RelateView.h"

@implementation RelateView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        //ARRewardView : 自定义的view名称
        NSArray *nibView =  [[NSBundle mainBundle] loadNibNamed:@"RelateView" owner:self options:nil];
        UIView *backView = [nibView objectAtIndex:0];
        backView.frame = frame;
        [self addSubview:backView];
    }
    return self;
}

- (IBAction)buttonAction:(UIButton *)sender {
    if (self.selectedButton) {
        self.selectedButton(sender);
    }
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end