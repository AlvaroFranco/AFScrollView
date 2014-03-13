//
//  AFScrollView.m
//  AFScrollView
//
//  Created by Alvaro Franco on 3/13/14.
//  Copyright (c) 2014 AlvaroFranco. All rights reserved.
//

#import "AFScrollView.h"

@interface AFScrollView ()

@property (nonatomic) NSInteger numberOfPages;

@end

@implementation AFScrollView

-(id)initWithFrame:(CGRect)frame andNumberOfPages:(NSInteger)pages {
    
    self = [super initWithFrame:frame];
    
    if (self) {
        self.contentSize = CGSizeMake(pages * self.bounds.size.width, self.bounds.size.height);
        _numberOfPages = pages;
    }
    
    return self;
}

-(void)configureViewAtIndexWithCompletion:(configurationBlock)completion {
    
    if (!_numberOfPages) {
        NSLog(@"AFScrollView message: A valid number of views must be provided");
        completion(nil, 0, NO);
    } else {
        
        for (int i = 0; i < _numberOfPages; i++) {
            UIView *view = [[UIView alloc]initWithFrame:CGRectMake(self.bounds.size.width * i, 0, self.bounds.size.width, self.bounds.size.height)];
            [self addSubview:view];
            
            completion(view, i, YES);
        }
    }
}

@end
