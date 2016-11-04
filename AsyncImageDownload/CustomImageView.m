//
//  CustomImageView.m
//  AsyncImageDownload
//
//  Created by Gitesh Gawade on 04/11/16.
//  Copyright © 2016 Gitesh Demos. All rights reserved.
//

#import "CustomImageView.h"

@implementation CustomImageView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor redColor];
    }
    return self;
}

-(void)loadImageWithUrl:(NSString *)urlString
{
    // Code to download Image from and display
}

@end
