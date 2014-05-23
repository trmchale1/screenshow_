//
//  GTSettingsVC.h
//  Screenshow
//
//  Created by Tim McHale on 5/22/14.
//  Copyright (c) 2014 Gramercy Consultants. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GTImageView.h"

@interface GTSettingsVC : UIViewController
{
    IBOutlet UISlider *mySlider;
    IBOutlet UITextField *myTextField;
    GTImageView *imageView;
    
}

@property (nonatomic) int *sliderValue;
@property (nonatomic, retain) IBOutlet UISlider *mySlider;
@property (nonatomic, retain) IBOutlet UITextField *myTextField;
@property int someData;
- (IBAction) sliderValueChanged:(id)sender;
- (IBAction) changeButtonPressed:(id)sender;
+(id)sharedProperty;
@end

