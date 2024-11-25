//
//  ViewController.m
//  ObjectiveCSpriteKitOSXAnimation
//
//  Created by Angelos Staboulis on 21/9/24.
//

#import "ViewController.h"
#import "AVKit/AVKit.h"
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
   
    // Do any additional setup after loading the view.
}
-(void) viewDidAppear{
    [super viewWillAppear];
    [self createScene];
}
-(void) createScene{
    self.skView = [[MySKView alloc] initWithFrame: self.view.bounds];
    [self.view addSubview: self.skView];
    self.snow = [[SnowScene alloc] initWithSize: self.view.bounds.size];
    [self.skView presentScene: self.snow];
    NSString *audio = [[NSBundle mainBundle] pathForResource:@"jingle" ofType:@"mp3"];
    NSURL *urlAudio = [NSURL fileURLWithPath:audio];
    NSError *error = nil;
    _audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:urlAudio error:&error];
    [_audioPlayer prepareToPlay];
    [_audioPlayer setNumberOfLoops:-1];
    [_audioPlayer play];
}
- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
