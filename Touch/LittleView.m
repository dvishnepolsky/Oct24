//
//  LittleView.m
//  Touch
//
//  Created by Dimitri V on 10/24/13.
//  Copyright (c) 2013 dImo. All rights reserved.
//

#import "LittleView.h"

@implementation LittleView

- (id) initWithFrame: (CGRect)frame
{
    self = [super initWithFrame: frame];
    if (self) {
        // Initialization codez
        self.backgroundColor = [UIColor greenColor];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void) drawRect: (CGRect) rect
{
    // Drawing code
    UIFont *font = [UIFont systemFontOfSize: 20];
    [@"Hello!" drawAtPoint: CGPointZero withFont: font];
}


@end
