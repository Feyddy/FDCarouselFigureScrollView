//
//  FDView.h
//  FDCarouselFigureScrollView
//
//  Created by 徐忠林 on 07/01/2017.
//  Copyright © 2017 Feyddy. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FDView;

@protocol FDViewDelegate <NSObject>
- (void)view:(FDView*)view currentClickedAtIndex:(NSInteger)index;

@end


@interface FDView : UIView

- (instancetype)initWithImageURLArr:(NSArray *)arr withFrame:(CGRect)rect andTimeInterval:(NSTimeInterval)time;
- (instancetype)initWithImageNameArr:(NSArray *)arr withFrame:(CGRect)rect andTimeInterval:(NSTimeInterval)time;

@property (nonatomic, assign) id<FDViewDelegate>delegate;
@end