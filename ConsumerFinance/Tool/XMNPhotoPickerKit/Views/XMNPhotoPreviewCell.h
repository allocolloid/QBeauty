//
//  XMNPhotoPreviewCell.h
//  XMNPhotoPickerKitExample
//
//  Created by XMFraker on 16/1/29.
//  Copyright © 2016年 XMFraker. All rights reserved.
//

#import <UIKit/UIKit.h>

@class XMNAssetModel;
@interface XMNPhotoPreviewCell : UICollectionViewCell

@property (nonatomic, copy, nullable)   void(^singleTapBlock)();


- (void)configCellWithItem:(XMNAssetModel * _Nonnull )item;

@end
// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com