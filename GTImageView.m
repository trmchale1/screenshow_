//
//  GTImageView.m
//  Screenshow
//
//  Created by Tim McHale on 5/19/14.
//  Copyright (c) 2014 Gramercy Consultants. All rights reserved.
//

#import "GTImageView.h"

@interface GTImageView ()

@end

@implementation GTImageView
@synthesize scrollView, imageArray;
@synthesize pageControl;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
  
    
    UIImage *image1 = [UIImage imageNamed:@"workExample.jpg"];
    UIImage *image2 = [UIImage imageNamed:@"IMG_0054.JPG"];
    UIImage *image3 = [UIImage imageNamed:@"IMG_0052.JPG"];
    
    
    imageArray = [NSArray arrayWithObjects:image1, image2, image3, nil];
    
    for (int i = 0; i < [imageArray count]; i++) {
        //This is to create a imageview for every single pagecontrol
        CGRect frame;
        frame.origin.x = self.scrollView.frame.size.width * i;
        frame.origin.y = 0;
        frame.size = self.scrollView.frame.size;
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:frame];
        imageView.image = [imageArray objectAtIndex:i];
        [self.scrollView addSubview:imageView];
    }
    
     scrollView.contentSize = CGSizeMake(scrollView.frame.size.width * [imageArray count], scrollView.frame.size.height);
}

- (void)scrollViewDidScroll:(UIScrollView *)sender {
    // Update the page when more than 50% of the previous/next page is visible
    CGFloat pageWidth = self.scrollView.frame.size.width;
    int page = floor((self.scrollView.contentOffset.x - pageWidth / 2) / pageWidth) + 1;
    self.pageControl.currentPage = page;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)viewDidUnload
{
    [super viewDidUnload];
}
@end
