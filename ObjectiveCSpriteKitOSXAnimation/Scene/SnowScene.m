//
//  SnowScene.m
//  ObjectiveCSpriteKitOSXAnimation
//
//  Created by Angelos Staboulis on 21/9/24.
//

#import "SnowScene.h"

@implementation SnowScene
- (void)sceneDidLoad{
    [self initScene];
}
-(void) initScene{
    _snow =  [NSKeyedUnarchiver unarchiveObjectWithFile:[[NSBundle mainBundle] pathForResource:@"Snow" ofType:@"sks"]];
    _sprite = [SKSpriteNode spriteNodeWithImageNamed:@"christmas.jpg"];
}
-(void) playScene{
    [_sprite setPosition:CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame))];
    [_sprite setSize:CGSizeMake(self.frame.size.width, self.frame.size.height)];
    [self setBackgroundColor:[NSColor blackColor]];
    [self setScaleMode:SKSceneScaleModeResizeFill];
    [self addChild:_sprite];
    [self addChild:_snow];
    CGVector vector = _snow.particlePositionRange;
    vector.dx = self.frame.size.width * 2.5;
    vector.dy = self.frame.size.height * 1.5;
    _snow.particlePositionRange = vector;
    CGPoint position = _snow.position;
    position.y = 600;
    _snow.position = position;
}
- (void)didMoveToView:(SKView *)view{
    [self playScene];
}
@end
