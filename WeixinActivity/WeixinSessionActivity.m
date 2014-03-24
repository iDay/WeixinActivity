//
//  WeixinSessionActivity.m
//  WeixinActivity
//
//  Created by Johnny iDay on 13-12-2.
//  Copyright (c) 2013年 Johnny iDay. All rights reserved.
//

#import "WeixinSessionActivity.h"

@implementation WeixinSessionActivity

- (UIImage *)activityImage
{
    return [UIImage imageNamed:@"icon_session.png"];
}

- (NSString *)activityTitle
{
    return NSLocalizedString(@"WeChat Session", nil);
}

- (void)performActivity
{
    SendMessageToWXReq *req = [[SendMessageToWXReq alloc] init];
    req.scene = scene;
    //    req.bText = NO;
    req.message = WXMediaMessage.message;
    req.message.title = [NSString stringWithFormat:NSLocalizedString(@"%@ Share",nil), [[NSBundle mainBundle] infoDictionary][@"CFBundleDisplayName"]];
    req.message.description = title;
    [self setThumbImage:req];
    if (url) {
        WXWebpageObject *webObject = WXWebpageObject.object;
        webObject.webpageUrl = [url absoluteString];
        req.message.mediaObject = webObject;
    } else if (image) {
        WXImageObject *imageObject = WXImageObject.object;
        imageObject.imageData = UIImageJPEGRepresentation(image, 1);
        req.message.mediaObject = imageObject;
    }
    [WXApi sendReq:req];
    [self activityDidFinish:YES];
}

@end
