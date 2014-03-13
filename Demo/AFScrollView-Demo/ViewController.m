//
//  ViewController.m
//  AFScrollView-Demo
//
//  Created by Alvaro Franco on 3/13/14.
//  Copyright (c) 2014 AlvaroFranco. All rights reserved.
//

#import "ViewController.h"
#import "AFScrollView.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    
    AFScrollView *scrollView = [[AFScrollView alloc]initWithFrame:self.view.bounds andNumberOfPages:5];
    [self.view addSubview:scrollView];
    
    scrollView.pagingEnabled = YES;
    
    [scrollView configureViewAtIndexWithCompletion:^(UIView *view, NSInteger index, BOOL success) {
        
        CGFloat hue = (arc4random() % 256 / 256.0);
        CGFloat saturation = (arc4random() % 128 / 256.0) + 0.5;
        CGFloat brightness = (arc4random() % 128 / 256.0) + 0.5;
        UIColor *color = [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];

        view.backgroundColor = color;
        
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(50, 200, 210, 50)];
        label.textAlignment = NSTextAlignmentCenter;
        label.text = [NSString stringWithFormat:@"Page number %li (index %li)", (long)index + 1, (long)index];
        [view addSubview:label];
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
