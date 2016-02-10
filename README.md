AFScrollView
=======================

A lightweight UIScrollView block-driven subclass for easily create multiple pages with embedded UIViews in Objective-C.

##Preview

![alt text](https://raw.github.com/AlvaroFranco/AFScrollView/master/preview.gif "Example")

##CocoaPods

AFScrollView is on [CocoaPods](http://cocoapods.org), so you can get the pod by adding this line to your Podfile

    pod 'AFScrollView', '~> 1.0'

If not, just import these files to your project:

    AFScrollView.h
    AFScrollView.m

##Usage

Import AFScrollView to your class

    #import "AFScrollView.h"

Init the class with ```-initWithFrame:andNumberOfPages```.

    AFScrollView *scrollView = [[AFScrollView alloc]initWithFrame:self.view.bounds andNumberOfPages:5];

In order to configure each page, which will be an UIView, call the block ```-configureViewAtIndexWithCompletion:```

    [scrollView configureViewAtIndexWithCompletion:^(UIView *view, NSInteger index, BOOL success) {

      //Configure here each page
      //Every page have a UIView embedded
      //So, in order to add objects, call [view addSubview:element];
      //The index var will retreive the current index
    }];

##Author

Made by Alvaro Franco. If you have any question, feel free to drop me a line at [alvarofrancoayala@gmail.com](mailto:alvarofrancoayala@gmail.com)