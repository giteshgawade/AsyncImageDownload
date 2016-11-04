//
//  DataCell.m
//  AsyncImageDownload
//
//  Created by Gitesh Gawade on 04/11/16.
//  Copyright © 2016 Gitesh Demos. All rights reserved.
//

#import "DataCell.h"

@implementation DataCell
{
    UIImageView *imgView;
    UILabel *titleLabel;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.backgroundColor = [UIColor blueColor];
        
        [self initViews];
        [self setupViews];
    }
    return self;
}

-(ImageCell *)getImageCell
{
    return _imageCell;
}

-(void)setImageCell:(ImageCell *)imageCell
{
    _imageCell = imageCell;
}

-(void)initViews
{
    imgView = [[UIImageView alloc] init];
    imgView.translatesAutoresizingMaskIntoConstraints = false;
    imgView.backgroundColor = [UIColor redColor];
    
    titleLabel = [[UILabel alloc] init];
    titleLabel.backgroundColor = [UIColor orangeColor];
    titleLabel.translatesAutoresizingMaskIntoConstraints = false;
    titleLabel.text = @"Title Label";
}

-(void)setupViews
{
    [self addSubview:imgView];
    [self addSubview:titleLabel];
    
//    NSDictionary *viewsDictionary = [NSDictionary dictionaryWithObjectsAndKeys:imgView,@"eventLocation",titleLabel, nil];
    NSLayoutConstraint *imgViewLeading = [NSLayoutConstraint constraintWithItem:imgView attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeading multiplier:1.0f constant:0.f];
    NSLayoutConstraint *imgViewTop = [NSLayoutConstraint constraintWithItem:imgView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTop multiplier:1.0f constant:0.f];
    NSLayoutConstraint *imgViewTrailing = [NSLayoutConstraint constraintWithItem:imgView attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTrailing multiplier:1.0f constant:0.f];
    NSLayoutConstraint *imgViewHeight = [NSLayoutConstraint constraintWithItem:imgView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeHeight multiplier:0.7f constant:0];
    
    [self addConstraint:imgViewLeading];
    [self addConstraint:imgViewTop];
    [self addConstraint:imgViewTrailing];
    [self addConstraint:imgViewHeight];
    
    
    NSLayoutConstraint *titleLabelLeading = [NSLayoutConstraint constraintWithItem:titleLabel attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeading multiplier:1.0f constant:0.f];
    NSLayoutConstraint *titleLabelTop = [NSLayoutConstraint constraintWithItem:titleLabel attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:imgView attribute:NSLayoutAttributeBottom multiplier:1.0f constant:0.f];
    NSLayoutConstraint *titleLabelTrailing = [NSLayoutConstraint constraintWithItem:titleLabel attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTrailing multiplier:1.0f constant:0.f];
    NSLayoutConstraint *titleLabelHeight = [NSLayoutConstraint constraintWithItem:titleLabel attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeHeight multiplier:0.3f constant:0];
    
    [self addConstraint:titleLabelLeading];
    [self addConstraint:titleLabelTop];
    [self addConstraint:titleLabelTrailing];
    [self addConstraint:titleLabelHeight];
    
#warning Need to implement titleLabel With Different method
    
}

@end
