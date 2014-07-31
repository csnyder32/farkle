//
//  DieLabel.h
//  Farkle
//
//  Created by Chris Snyder on 7/30/14.
//  Copyright (c) 2014 Chris Snyder. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DieLabelDelegate

-(void)didChooseDie:(id)dieLabel;


@end

@interface DieLabel : UILabel
@property id<DieLabelDelegate> delegate;

-(void)roll;

@end
