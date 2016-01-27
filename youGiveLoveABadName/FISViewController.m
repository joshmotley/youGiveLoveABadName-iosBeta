//
//  FISViewController.m
//  youGiveLoveABadName
//
//  Created by Joe Burgess on 7/9/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import "FISViewController.h"

@interface FISViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *bonJovi;
- (IBAction)expand:(id)sender;
@property BOOL isExpanded;

@end

@implementation FISViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.isExpanded = NO;
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)expand:(id)sender {
    
    if (self.isExpanded == NO) {


    
    
    [UIView animateKeyframesWithDuration:1.0
                                   delay:0.0
                                 options:UIViewKeyframeAnimationOptionCalculationModeLinear
                              animations:^{
                                  [UIView addKeyframeWithRelativeStartTime:0.0
                                                          relativeDuration:1/3.0
                                                                animations:^{
                                                                    self.bonJovi.frame = CGRectMake(0, self.bonJovi.frame.origin.y+20, self.bonJovi.frame.size.width, self.bonJovi.frame.size.height-40);
                                                                }];
                                  
                                  [UIView addKeyframeWithRelativeStartTime:0.25
                                                          relativeDuration:1/3.0
                                                                animations:^{
                                                                    self.bonJovi.frame = CGRectMake(0, -20, self.bonJovi.frame.size.width, self.view.frame.size.height+40);
                                                                }];
                                  [UIView addKeyframeWithRelativeStartTime:0.66
                                                          relativeDuration:1/3.0
                                                                animations:^{
                                                                    self.bonJovi.frame = CGRectMake(0, 0, self.bonJovi.frame.size.width, self.view.frame.size.height);
                                                                }];
                                  
                              }
                              completion:^(BOOL finished) {
                                  
                                  self.isExpanded = YES;
                                  
                                 
                              }];
        
    }else{
        
        [UIView animateKeyframesWithDuration:1.0
                                       delay:0.0
                                     options:UIViewKeyframeAnimationOptionCalculationModeLinear
                                  animations:^{

        [UIView addKeyframeWithRelativeStartTime:0.0
                                                              relativeDuration:1/3.0
                                                                    animations:^{
                                                                        self.bonJovi.frame = CGRectMake(0, -20, self.bonJovi.frame.size.width, self.view.frame.size.height+40);
                                                                    }];
        
        [UIView addKeyframeWithRelativeStartTime:0.25
                                relativeDuration:1/3.0
                                      animations:^{
                                          self.bonJovi.frame = CGRectMake(0, 217, self.bonJovi.frame.size.width, 134);
                                      }];
        

        [UIView addKeyframeWithRelativeStartTime:0.66
                                relativeDuration:1/3.0
                                      animations:^{
                                          self.bonJovi.frame = CGRectMake(0, 197, 320, 174);
                                      }];
                                  }
                                  completion:^(BOOL finished) {
                                      self.isExpanded = NO;
                                      
                                      
                                  }];
    }
}
@end
