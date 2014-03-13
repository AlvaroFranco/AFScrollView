//
//  AFScrollView.h
//  AFScrollView
//
//  Created by Alvaro Franco on 3/13/14.
//  Copyright (c) 2014 AlvaroFranco. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AFScrollView : UIScrollView

typedef void (^configurationBlock)(UIView *view, NSInteger index, BOOL success);

-(id)initWithFrame:(CGRect)frame andNumberOfPages:(NSInteger)pages;

-(void)configureViewAtIndexWithCompletion:(configurationBlock)completion;

@end
