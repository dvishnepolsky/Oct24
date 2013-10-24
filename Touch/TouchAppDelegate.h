//
//  TouchAppDelegate.h
//  Touch
//
//  Created by Dimitri V on 10/24/13.
//  Copyright (c) 2013 dImo. All rights reserved.
//

#import <UIKit/UIKit.h>
@class View;

@interface TouchAppDelegate: UIResponder <UIApplicationDelegate> {
    View *view;
    UIWindow *_window;
}

@property (strong, nonatomic) UIWindow *window;
@end
