//
//  MyScene.m
//  4physicsBodys_Linked_By_RopeJoint
//
//  Created by YG on 2/17/14.
//  Copyright (c) 2014 YuryGitman. All rights reserved.
//


#import "MyScene.h"

@interface MyScene()
@property SKSpriteNode* mySquare1;
@property SKSpriteNode* mySquare2;
@property SKSpriteNode* mySquare3;
@property SKSpriteNode* mySquare4;
@property SKSpriteNode* mySquare5;
@property SKSpriteNode* mySquare6;
@property SKSpriteNode* mySquare7;
@property SKSpriteNode* mySquare8;
@property SKSpriteNode* myShelf;
@property SKPhysicsJoint* myRopeJoint;
@property SKPhysicsJoint* myRopeJoint1;
@property SKPhysicsJoint* myRopeJoint2;
@property SKPhysicsJoint* myRopeJoint3;
@property SKPhysicsJoint* myRopeJoint4;
@property SKPhysicsJoint* myRopeJoint5;
@property SKPhysicsJoint* myRopeJoint6;

@end

@implementation MyScene

-(void) activateJointRope{
    
    _myRopeJoint = [SKPhysicsJointLimit jointWithBodyA:_mySquare1.physicsBody bodyB:_mySquare2.physicsBody anchorA:_mySquare1.position anchorB:_mySquare2.position];
    
    [self.physicsWorld addJoint:_myRopeJoint];
    
    _myRopeJoint1 = [SKPhysicsJointLimit jointWithBodyA:_mySquare2.physicsBody bodyB:_mySquare3.physicsBody anchorA:_mySquare2.position anchorB:_mySquare3.position];
    
    [self.physicsWorld addJoint:_myRopeJoint1];
    
    
    _myRopeJoint2 = [SKPhysicsJointLimit jointWithBodyA:_mySquare3.physicsBody bodyB:_mySquare4.physicsBody anchorA:_mySquare3.position anchorB:_mySquare4.position];
    
    [self.physicsWorld addJoint:_myRopeJoint2];
    
    _myRopeJoint3 = [SKPhysicsJointLimit jointWithBodyA:_mySquare4.physicsBody bodyB:_mySquare5.physicsBody anchorA:_mySquare4.position anchorB:_mySquare5.position];
    
    [self.physicsWorld addJoint:_myRopeJoint3];
    
    _myRopeJoint4 = [SKPhysicsJointLimit jointWithBodyA:_mySquare5.physicsBody bodyB:_mySquare6.physicsBody anchorA:_mySquare5.position anchorB:_mySquare6.position];
    
    [self.physicsWorld addJoint:_myRopeJoint4];
    
    _myRopeJoint5 = [SKPhysicsJointLimit jointWithBodyA:_mySquare6.physicsBody bodyB:_mySquare7.physicsBody anchorA:_mySquare6.position anchorB:_mySquare7.position];
    
    [self.physicsWorld addJoint:_myRopeJoint5];
    
    _myRopeJoint6 = [SKPhysicsJointLimit jointWithBodyA:_mySquare7.physicsBody bodyB:_mySquare8.physicsBody anchorA:_mySquare7.position anchorB:_mySquare8.position];
    
    [self.physicsWorld addJoint:_myRopeJoint6];
    
}

-(void) spawnSquares{
    _mySquare1 =[[SKSpriteNode alloc]initWithColor:[SKColor redColor] size:CGSizeMake(10, 80)];
    _mySquare2 =[[SKSpriteNode alloc]initWithColor:[SKColor yellowColor] size:CGSizeMake(10, 60)];
    _mySquare3 =[[SKSpriteNode alloc]initWithColor:[SKColor redColor] size:CGSizeMake(10, 40)];
    _mySquare4 =[[SKSpriteNode alloc]initWithColor:[SKColor yellowColor] size:CGSizeMake(10, 60)];
    _mySquare5 =[[SKSpriteNode alloc]initWithColor:[SKColor redColor] size:CGSizeMake(10, 40)];
    _mySquare6 =[[SKSpriteNode alloc]initWithColor:[SKColor yellowColor] size:CGSizeMake(10, 60)];
    _mySquare7 =[[SKSpriteNode alloc]initWithColor:[SKColor redColor] size:CGSizeMake(10, 40)];
    _mySquare8 =[[SKSpriteNode alloc]initWithColor:[SKColor yellowColor] size:CGSizeMake(10, 60)];
    
    
    [_mySquare1 setPosition:CGPointMake(self.size.width/1.5, self.size.height/8)];
    [_mySquare2 setPosition:CGPointMake(self.size.width/1.5, self.size.height/6)];
    [_mySquare3 setPosition:CGPointMake(self.size.width/1.5, self.size.height/4)];
    [_mySquare4 setPosition:CGPointMake(self.size.width/1.5, self.size.height/6)];
    [_mySquare5 setPosition:CGPointMake(self.size.width/1.5, self.size.height/4)];
    [_mySquare6 setPosition:CGPointMake(self.size.width/1.5, self.size.height/6)];
    [_mySquare7 setPosition:CGPointMake(self.size.width/1.5, self.size.height/4)];
    [_mySquare8 setPosition:CGPointMake(self.size.width/1.5, self.size.height/6)];
    
    _mySquare1.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare1.size];
    _mySquare2.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare2.size];
    _mySquare3.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare3.size];
    _mySquare4.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare4.size];
    _mySquare5.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare5.size];
    _mySquare6.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare6.size];
    _mySquare7.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare7.size];
    _mySquare8.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare8.size];
    
    
    [_mySquare1.physicsBody setRestitution:1.0];
    [_mySquare2.physicsBody setRestitution:1.0];
    [_mySquare3.physicsBody setRestitution:1.0];
    [_mySquare4.physicsBody setRestitution:1.0];
    [_mySquare5.physicsBody setRestitution:1.0];
    [_mySquare6.physicsBody setRestitution:1.0];
    [_mySquare7.physicsBody setRestitution:1.0];
    [_mySquare8.physicsBody setRestitution:1.0];
    
    [self addChild:_mySquare1];
    [self addChild:_mySquare2];
    [self addChild:_mySquare3];
    [self addChild:_mySquare4];
    [self addChild:_mySquare5];
    [self addChild:_mySquare6];
    [self addChild:_mySquare7];
    [self addChild:_mySquare8];
    
}

-(void)makeShelf{
    _myShelf = [[SKSpriteNode alloc]initWithColor:[SKColor lightGrayColor] size:CGSizeMake(200, 10)];
    _myShelf.position = CGPointMake(self.size.width/2, self.size.height/2);
    _myShelf.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_myShelf.size];
    [_myShelf.physicsBody setDynamic:NO];
    
    [self addChild:_myShelf];
    
}

-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.scaleMode = SKSceneScaleModeAspectFit;
        self.physicsBody = [SKPhysicsBody bodyWithEdgeLoopFromRect:self.frame];
        [self.physicsBody setRestitution:1];
        
        
        [self spawnSquares];
        
        [self activateJointRope];
        [self makeShelf];
        
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    if (_mySquare1.physicsBody.dynamic) {
        
        [_mySquare1.physicsBody setDynamic:NO];
    }
    
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        [_mySquare1 setPosition:location];
        
        
        // [_mySquare1.physicsBody setDynamic:NO];
        //  [_mySquare2.physicsBody setDynamic:NO];
        
    }
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        [_mySquare1 setPosition:location];
        
    }
}

-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event  {
    
    if (!_mySquare1.physicsBody.dynamic) {
        [_mySquare1.physicsBody setDynamic:YES];
    }
    //  [_mySquare1.physicsBody setDynamic:YES];
    //  [_mySquare2.physicsBody setDynamic:YES];
    
}

-(void) touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event{
    
    if (!_mySquare1.physicsBody.dynamic) {
        [_mySquare1.physicsBody setDynamic:YES];
    }
    //  [_mySquare1.physicsBody setDynamic:YES];
    //  [_mySquare2.physicsBody setDynamic:YES];
    
}


-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
