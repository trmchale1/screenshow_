//
//  GTViewController.m
//  Screenshow
//
//  Created by Tim McHale on 5/23/14.
//  Copyright (c) 2014 Gramercy Consultants. All rights reserved.
//

#import "GTViewController.h"
#import "GTImageView.h"
#import "GTSettingsVC.h"
@interface GTViewController ()

@end

@implementation GTViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        UINavigationItem *navItem = self.navigationItem;
        navItem.title = @"Image Viewer";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)startScreenshow:(id)sender
{
    GTImageView *gtImageView = [[GTImageView alloc] init];
    [self.navigationController pushViewController:gtImageView
                                         animated:YES];
}

-(IBAction)downloadImages:(id)sender
{
    
}

-(IBAction)setttings:(id)sender
{
    GTSettingsVC *settings = [[GTSettingsVC alloc] init];
    
    [self.navigationController pushViewController:settings
                                         animated:YES];
    
}




@end
