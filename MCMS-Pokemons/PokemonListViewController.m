//
//  ViewController.m
//  MCMS-Pokemons
//
//  Created by Ronald Hernandez on 3/17/15.
//  Copyright (c) 2015 Ron. All rights reserved.
//

#import "PokemonListViewController.h"
#import "MagicalCreature.h"
#import "PokemonDetailViewController.h"
#import "BattleViewController.h"

@interface PokemonListViewController () <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *PokemonTypeTextField;

@end

@implementation PokemonListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MagicalCreature *pokemon1 = [[MagicalCreature alloc] initWithFullName:@"Pikachu" andWithType:@"Electric"];
    MagicalCreature *pokemon2 = [[MagicalCreature alloc] initWithFullName:@"Dratini" andWithType:@"Dragon"];
    MagicalCreature *pokemon3 = [[MagicalCreature alloc] initWithFullName:@"Mew" andWithType:@"Psychic"];

    self.pokemons = [NSMutableArray arrayWithObjects:pokemon1,pokemon2,pokemon3, nil];


}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.pokemons.count;
}

- (IBAction)onAddButtonTapped:(UIButton *)sender
{
    MagicalCreature *someCreature = [[MagicalCreature alloc] initWithFullName:self.nameTextField.text andWithType:self.PokemonTypeTextField.text];
    [self.pokemons addObject:someCreature];
    self.nameTextField.text = @"";

    [self.tableView reloadData];
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    PokemonDetailViewController *pokemonDVC = [segue destinationViewController];
    NSIndexPath *selectedIndexPath = [self.tableView indexPathForSelectedRow];
    MagicalCreature *selectedPokemon = [self.pokemons objectAtIndex:selectedIndexPath.row];

    pokemonDVC.selectedPokemon = selectedPokemon;


    BattleViewController *battleVC = [segue destinationViewController];
    NSString *winnerPokemon = [self.pokemons objectAtIndex:rand()];
    battleVC.winnerPokemonName = winnerPokemon;

}


#pragma mark - UITableViewDelegate Protocols
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"cellID"];

    MagicalCreature *somePokemon = [self.pokemons objectAtIndex:indexPath.row];

    cell.textLabel.text = somePokemon.name;
    cell.detailTextLabel.text = somePokemon.type;


    return cell;
}




@end
