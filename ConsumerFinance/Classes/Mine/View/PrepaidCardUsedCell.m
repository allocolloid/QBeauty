//
//  PrepaidCardUsedCell.m
//  ConsumerFinance
//
//  Created by Shuai on 2018/5/23.
//  Copyright © 2018年 ConsumerFinance. All rights reserved.
//

#import "PrepaidCardUsedCell.h"

@implementation PrepaidCardUsedCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)configCellWithModel:(PrepaidCardModel *)model withType:(int)type {
    [self.imgView sd_setImageWithURL:[NSURL URLWithString:[model.imgUrl stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet characterSetWithCharactersInString:@"`#%^{}\"[]|\\<> "].invertedSet]] placeholderImage:[UIImage imageNamed:@"defaultImg"]];
    if (model.imgUrl.length > 0) {
        [self.imgView setContentScaleFactor:[[UIScreen mainScreen] scale]];
        self.imgView.contentMode =  UIViewContentModeScaleAspectFill;
        self.imgView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
        self.imgView.clipsToBounds  = YES;
    }
    if (type == 1) {
        self.tempLabel.text = @"使用中";
    } else if (type == 2) {
        self.tempLabel.text = @"已失效";
        self.tempLabel.backgroundColor = [UIColor colorWithHex:0xcccccc];
    }
    self.titleLabel.text = model.shopName;
    self.moneyLabel.text = model.money;
    self.dateLabel.text = [Helper dateWithTimeStampDate:model.expired_time / 1000];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end