//
//  MagicalCreature.m
//  MCMS-Pokemons
//
//  Created by Ronald Hernandez on 3/17/15.
//  Copyright (c) 2015 Ron. All rights reserved.
//

#import "MagicalCreature.h"

@implementation MagicalCreature

-(instancetype) initWithFullName:(NSString *) pokemonName{
    self = [super init];
    self.name = pokemonName;

    return self;
}

@end
