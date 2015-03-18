//
//  MagicalCreature.m
//  MCMS-Pokemons
//
//  Created by Ronald Hernandez on 3/17/15.
//  Copyright (c) 2015 Ron. All rights reserved.
//

#import "MagicalCreature.h"

@implementation MagicalCreature

-(instancetype) initWithFullName:(NSString *)pokemonName andWithType:(NSString *)pokemonType{
    self = [super init];
    self.name = pokemonName;
    self.type = pokemonType;

    return self;
}

@end
