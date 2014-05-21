//
//  GTImageView.h
//  Screenshow
//
//  Created by Tim McHale on 5/19/14.
//  Copyright (c) 2014 Gramercy Consultants. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GTImageView : UIViewController
{
    UIScrollView* scrollView;
    UIPageControl* pageControl;
}

@property (nonatomic, retain) IBOutlet UIScrollView* scrollView;
@property (nonatomic, retain) IBOutlet UIPageControl* pageControl;
@property (nonatomic,strong) NSArray *imageArray;
@end
