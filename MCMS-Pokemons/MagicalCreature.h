//
//  MagicalCreature.h
//  MCMS-Pokemons
//
//  Created by Ronald Hernandez on 3/17/15.
//  Copyright (c) 2015 Ron. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MagicalCreature : NSObject
@property NSString  *name;

-(instancetype) initWithFullName:(NSString *)pokemonName;


@end
