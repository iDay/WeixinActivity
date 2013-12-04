//
//  WeixinTimelineActivity.m
//  WeixinActivity
//
//  Created by Johnny iDay on 13-12-2.
//  Copyright (c) 2013年 Johnny iDay. All rights reserved.
//

#import "WeixinTimelineActivity.h"

@implementation WeixinTimelineActivity

- (id)init
{
    self = [super init];
    if (self) {
        scene = WXSceneTimeline;
    }
    return self;
}

- (UIImage *)activityImage
{
    return [UIImage imageNamed:@"icon_timeline.png"];
}

- (NSString *)activityTitle
{
    return @"微信朋友圈";
}


@end
