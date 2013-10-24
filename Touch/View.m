//
//  View.m
//  Touch
//
//  Created by Dimitri V on 10/24/13.
//  Copyright (c) 2013 dImo. All rights reserved.
//

#import "View.h"
#import "LittleView.h"

@implementation View

- (id) initWithFrame: (CGRect) frame
{
    self = [super initWithFrame: frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor whiteColor];

        CGRect f = CGRectMake(0, 0, 100, 40);
        littleView = [[LittleView alloc] initWithFrame: f];
        [self addSubview: littleView];
    }
    return self;
}

- (void) touchesBegan: (NSSet *) touches withEvent: (UIEvent *) event {
    if (touches.count > 0) {
        
        [UIView animateWithDuration: 1.0
                              delay: 0.0
                            options: UIViewAnimationOptionCurveEaseInOut
                                            | UIViewAnimationOptionAllowUserInteraction
                                            | UIViewAnimationCurveLinear
                         animations: ^{
                             //This block describes what the animation should do.
                             [UIView setAnimationRepeatCount: 1];
                             littleView.center = [[touches anyObject] locationInView: self];
                             littleView.alpha = 0.4;	//0.0 is transparent, 1.0 is opaque
                             littleView.alpha = 1.0;
                             littleView.transform = CGAffineTransformMakeRotation(30);
                         }
                         completion: ^(BOOL b) {
                             [UIView animateWithDuration: 1.0
                                                   delay: 0.0
                                                 options: UIViewAnimationOptionCurveEaseInOut
                                              animations: ^{
                                                  //This block describes what the animation should do.
                                                  littleView.center = [[touches anyObject] locationInView: self];
                                                  littleView.transform = CGAffineTransformMakeRotation(120);
                                              }
                                              completion: ^(BOOL b) {
                                                  [UIView animateWithDuration: 1.0
                                                                        delay: 0.5
                                                                      options: UIViewAnimationOptionCurveEaseInOut
                                                                   animations: ^{
                                                                       
                                                                       littleView.center = [[touches anyObject] locationInView: self];
                                                                       littleView.transform = CGAffineTransformMakeRotation(0);
                                                                   }
                                                                   completion: NULL
                                                   ];
                                              }
                              ];
                         }
         ];
    }
    
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void) drawRect: (CGRect) rect
{
    // Drawing code
}
*/

@end
