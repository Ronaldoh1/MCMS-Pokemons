//
//  ViewController.m
//  MCMS-Pokemons
//
//  Created by Ronald Hernandez on 3/17/15.
//  Copyright (c) 2015 Ron. All rights reserved.
//

#import "PokemonListViewController.h"
#import "MagicalCreature.h"

@interface PokemonListViewController () <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation PokemonListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MagicalCreature *pokemon1 = [[MagicalCreature alloc] initWithFullName:@"Pikachu"];
    MagicalCreature *pokemon2 = [[MagicalCreature alloc] initWithFullName:@"Dratini"];
    MagicalCreature *pokemon3 = [[MagicalCreature alloc] initWithFullName:@"Mew"];

    self.pokemons = [NSMutableArray arrayWithObjects:pokemon1,pokemon2,pokemon3, nil];

}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.pokemons.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"cellID"];

   MagicalCreature *somePokemon = [self.pokemons objectAtIndex:indexPath.row];
    cell.textLabel.text = somePokemon.name;


    return cell;
}



@end
