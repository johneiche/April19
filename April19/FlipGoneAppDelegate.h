//
//  FlipGoneAppDelegate.h
//  April19
//
//  Created by John Eiche on 4/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVAudioPlayer.h>  //needed for AVAudioPlayer
@class BigView;

@interface FlipGoneAppDelegate : UIResponder <UIApplicationDelegate> {
    BigView *bigView;
    UIWindow *_window;
    AVAudioPlayer *player;
}

@property (strong, nonatomic) UIWindow *window;

@end

