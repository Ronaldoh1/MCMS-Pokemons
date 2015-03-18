//
//  BattleViewController.m
//  MCMS-Pokemons
//
//  Created by Mert Akanay on 17.03.2015.
//  Copyright (c) 2015 Ron. All rights reserved.
//

#import "BattleViewController.h"

@interface BattleViewController ()
@property (weak, nonatomic) IBOutlet UILabel *battleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *battleImageView;

@end

@implementation BattleViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.battleLabel.text = self.winnerPokemonName;
}

@end
