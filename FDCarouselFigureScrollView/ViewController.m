//
//  ViewController.m
//  FDCarouselFigureScrollView
//
//  Created by 徐忠林 on 07/01/2017.
//  Copyright © 2017 Feyddy. All rights reserved.
//

#import "ViewController.h"
#import "FDView.h"


@interface ViewController()<FDViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //网络图片
    NSArray *dataArr = @[@"http://img2.3lian.com/2014/f5/43/d/68.jpg",@"http://file.juzimi.com/shouxiepic/jpzumi.jpg",@"http://a.fssta.com/content/dam/fsdigital/fscom/nba/images/2016/11/09/gettyimages-621672604.vadapt.664.high.71.jpg",@"http://file.juzimi.com/shouxiepic/jazlmo1.jpg"];
    //    [self initWithImageURLArr:dataArr];
    
    //本地图片
    NSMutableArray *mutArr = [NSMutableArray array];
    for (NSInteger i=0; i<4; i++) {
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"%ld.png",i+21]];
        [mutArr addObject:image];
    }
    
    
    FDView *view = [[FDView alloc] initWithImageNameArr:mutArr withFrame:CGRectMake(20, 200, 374, 240) andTimeInterval:2.0];
    view.delegate = self;
    [self.view addSubview:view];
    
}
#pragma mark - JPBannerViewDelegate
- (void)view:(FDView *)view currentClickedAtIndex:(NSInteger)index{
    NSLog(@"当前点击的是第%ld页",index);
}

@end
