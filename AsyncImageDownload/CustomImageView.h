//
//  CustomImageView.h
//  AsyncImageDownload
//
//  Created by Gitesh Gawade on 04/11/16.
//  Copyright © 2016 Gitesh Demos. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Cache.h"

@interface CustomImageView : UIImageView
{
    NSString *imgURLString;
    Cache *cache;
}

-(void)loadImageWithUrl:(NSString *)urlString;

@end
