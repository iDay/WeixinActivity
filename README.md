WeixinActivity
==============
![ios6](https://raw.github.com/iDay/WeixinActivity/master/ios6.png)
![ios7](https://raw.github.com/iDay/WeixinActivity/master/ios7.png)

## Requirements

* iOS 6.0+
* ARC

## Installation

#### From [CocoaPods](http://www.cocoapods.org)

`pod 'WeixinActivity'`

#### From source

* Drag the `WeixinActivity/` folder to your project

## Getting Started

````objective-c
UIActivityViewController *activityView = [[UIActivityViewController alloc] initWithActivityItems:@[@"这里是标题", [UIImage imageNamed:@"Oauth"], [NSURL URLWithString:@"http://www.google.com"]] applicationActivities:activity];
    activityView.excludedActivityTypes = @[UIActivityTypeAssignToContact, UIActivityTypeCopyToPasteboard, UIActivityTypePrint];
[self presentViewController:activityView animated:YES completion:nil];
````

## 微信开放平台文档看这里：
http://open.weixin.qq.com/document/gettingstart/ios/?lang=zh_CN