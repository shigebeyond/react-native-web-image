/**
 * Copyright (c) 2015-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 */

#import "SKWebImageViewManager.h"

#import "UIImageView+WebCache.h"

#import "RCTConvert.h"
#import "RCTUtils.h"

@implementation SKWebImageViewManager

// 暴露模块
RCT_EXPORT_MODULE()

- (UIView *)view
{
  UIImageView *view = [[UIImageView alloc]initWithFrame:CGRectZero];
  view.contentMode = UIViewContentModeScaleAspectFill;
  return view;
}

// 暴露属性
RCT_REMAP_VIEW_PROPERTY(defaultImageSrc, defaultImage, UIImage) // 参数：1 manager暴露的属性 2 对应的view的属性 3 转换的类型（manager的属性，转换为view的属性）

RCT_EXPORT_VIEW_PROPERTY(contentMode, UIViewContentMode) // 参数：1 manager的属性=view的属性（同名） 2 转换的类型

//RCT_REMAP_VIEW_PROPERTY(src, imageURL, NSURL)
RCT_CUSTOM_VIEW_PROPERTY(src, NSURL, UIImageView) // 参数：1 manager的属性 2 转换的类型 3 view的类型
{
    // 设置图片
    [view sd_setImageWithURL:json placeholderImage:[UIImage imageNamed:@"broken.png"] options:SDWebImageRetryFailed | SDWebImageLowPriority | SDWebImageRefreshCached];
}

@end
