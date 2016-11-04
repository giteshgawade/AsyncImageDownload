//
//  ViewController.m
//  AsyncImageDownload
//
//  Created by Gitesh Gawade on 04/11/16.
//  Copyright © 2016 Gitesh Demos. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSMutableArray *dataArray;
}
@end

@implementation ViewController
@synthesize collectionView;

static NSString *cellID = @"cellId";

- (void)viewDidLoad {
    [super viewDidLoad];

    collectionView.delegate = self;
    collectionView.dataSource = self;
    
    [collectionView registerClass:[DataCell class] forCellWithReuseIdentifier:cellID];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loadData:(id)sender
{
    dataArray = [[NSMutableArray alloc] init];
}

#pragma mark CollectionView_Delegate_Datasource

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    if (dataArray.count != 0) {
        return dataArray.count;
    }
    return 10;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = (DataCell *) [collectionView dequeueReusableCellWithReuseIdentifier:cellID forIndexPath:indexPath];
    return cell;
}

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(self.collectionView.frame.size.width, 200);
}

@end
