//
//  PokemonDetailViewController.m
//  MCMS-Pokemons
//
//  Created by Ronald Hernandez on 3/17/15.
//  Copyright (c) 2015 Ron. All rights reserved.
//

#import "PokemonDetailViewController.h"
#import "MagicalCreature.h"

@interface PokemonDetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *pokemonNameLabel;
@end

@implementation PokemonDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.pokemonNameLabel.text = self.selectedPokemon.name;

}



@end
