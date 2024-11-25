//
//  ViewController.h
//  ObjectiveCSpriteKitOSXAnimation
//
//  Created by Angelos Staboulis on 21/9/24.
//

#import <Cocoa/Cocoa.h>
#import <SpriteKit/SpriteKit.h>
#import "SnowScene.h"
#import "MySKView.h"
#import "AVKit/AVKit.h"
@interface ViewController : NSViewController
@property MySKView *skView;
@property SnowScene *snow;
@property AVAudioPlayer *audioPlayer;

@end

