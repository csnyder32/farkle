//
//  ViewController.m
//  Farkle
//
//  Created by Chris Snyder on 7/30/14.
//  Copyright (c) 2014 Chris Snyder. All rights reserved.
//

#import "ViewController.h"
#import "DieLabel.h"

@interface ViewController ()<DieLabelDelegate>
@property (weak, nonatomic) IBOutlet DieLabel *die1;
@property (weak, nonatomic) IBOutlet DieLabel *die2;
@property (weak, nonatomic) IBOutlet DieLabel *die3;
@property (weak, nonatomic) IBOutlet DieLabel *die4;
@property (weak, nonatomic) IBOutlet DieLabel *die5;
@property (weak, nonatomic) IBOutlet DieLabel *die6;
@property (weak, nonatomic) IBOutlet UILabel *userScore;

@property NSMutableArray *dice;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.die1.delegate = self;
    self.die2.delegate = self;
    self.die3.delegate = self;
    self.die4.delegate = self;
    self.die5.delegate = self;
    self.die6.delegate = self;
    self.userScore.text = @"Are you a winner???";
    self.dice = [[NSMutableArray alloc]init];


}

- (IBAction)onRollButtonPressed:(id)sender
{

    for (DieLabel *label in self.view.subviews)
    {
        if([label isKindOfClass:[DieLabel class]])
        {
            if (![self.dice containsObject:label])
            {
                [label roll];
                label.delegate = self;
            }
        }
    }
    if (([self.die2.text isEqualToString:@"3"] &&[self.die4.text isEqualToString:@"4"])) {
        self.userScore.text = @"WINNER!!!";
    }else{
        self.userScore.text = @"LOSER";
    }
}
- (void)didChooseDie:(DieLabel*)dieLabel
{
    [self.dice addObject:dieLabel];
    dieLabel.backgroundColor = [UIColor redColor];
}


@end
