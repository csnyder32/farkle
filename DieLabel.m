//
//  DieLabel.m
//  Farkle
//
//  Created by Chris Snyder on 7/30/14.
//  Copyright (c) 2014 Chris Snyder. All rights reserved.
//

#import "DieLabel.h"

@implementation DieLabel

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        UITapGestureRecognizer *gr = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(onTapped:)];
        [self addGestureRecognizer:gr];

    }
    return self;
}
-(void)roll
{
    int random = arc4random_uniform(6) + 1;
    self.text = [NSString stringWithFormat:@"%i", random];
}
-(IBAction)onTapped:(UITapGestureRecognizer *)sender
{
    [self.delegate didChooseDie:self];

}
@end
