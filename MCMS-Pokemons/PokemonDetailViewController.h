//
//  PokemonDetailViewController.h
//  MCMS-Pokemons
//
//  Created by Ronald Hernandez on 3/17/15.
//  Copyright (c) 2015 Ron. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MagicalCreature.h"

@interface PokemonDetailViewController : UIViewController

@property MagicalCreature *pokemonName;
@property MagicalCreature *pokemonType;
@property MagicalCreature *selectedPokemon;

@end
