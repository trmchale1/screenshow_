//
//  GTSettingsVC.m
//  Screenshow
//
//  Created by Tim McHale on 5/22/14.
//  Copyright (c) 2014 Gramercy Consultants. All rights reserved.
//

#import "GTSettingsVC.h"
#import "GTImageView.h"
@interface GTSettingsVC ()
@end

@implementation GTSettingsVC
@synthesize mySlider, myTextField;
@synthesize sliderValue, someData;

- (IBAction) sliderValueChanged:(UISlider *)sender {
    myTextField.text = [NSString stringWithFormat:@"%.1f", [sender value]];
}

- (IBAction) changeButtonPressed:(id)sender {
   imageView = [[GTImageView alloc] initWithNibName:@"GTImageView" bundle:nil];
    NSLog(@"text value = %@", myTextField);
    NSString *textValue = [myTextField text];
    int value = [textValue floatValue];
    if (value < 0) value = 0;
    if (value > 100) value = 100;
    mySlider.value = value;
    sliderValue = &value;
    NSLog(@"sliderValue = %d", *(sliderValue));
    myTextField.text = [NSString stringWithFormat:@"%.1d", value];
    if ([myTextField canResignFirstResponder]) [myTextField resignFirstResponder];
    someData = *(sliderValue);
    NSLog(@"someData = %d", someData);
    imageView.someData = someData;
    NSLog(@"someData = %d", imageView.someData);

}

- (void) touchesBegan: (NSSet *) touches withEvent: (UIEvent *) event {
    if (myTextField) {
        if ([myTextField canResignFirstResponder]) [myTextField resignFirstResponder];
    }
    [super touchesBegan: touches withEvent: event];
}



// Tutorial code ends here




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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
