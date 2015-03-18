//
//  PokemonDetailViewController.m
//  MCMS-Pokemons
//
//  Created by Ronald Hernandez on 3/17/15.
//  Copyright (c) 2015 Ron. All rights reserved.
//

#import "PokemonDetailViewController.h"
#import "MagicalCreature.h"
#import "PokemonListViewController.h"

@interface PokemonDetailViewController () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *pokemonImage;
@property (weak, nonatomic) IBOutlet UILabel *pokemonNameLabel;
@property (weak, nonatomic) IBOutlet UITextField *editNameTextField;
@property (weak, nonatomic) IBOutlet UITableView *attackTableView;
@property NSIndexPath *selectedIndex;

@end

@implementation PokemonDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.pokemonAttack = [self.pokemonAttack init];

    self.pokemonNameLabel.text = self.selectedPokemon.name;

    if ([self.selectedPokemon.name isEqualToString:@"Pikachu"]) {

        self.pokemonImage.image =[UIImage imageNamed:@"pikachu.png"];
        self.pokemonAttack = [NSMutableArray arrayWithObjects:@"Thunderbolt",@"Quick Attack",@"Headbutt",@"Iron Tail", nil];


    } else if ([self.selectedPokemon.name isEqualToString:@"Dratini"]){
        self.pokemonImage.image =[UIImage imageNamed:@"dratini.png"];
        self.pokemonAttack = [NSMutableArray arrayWithObjects:@"Dragon Breath",@"Fire Blast",@"Water Gun",@"Rest", nil];

    }else if ([self.selectedPokemon.name isEqualToString:@"Mew"]){

        self.pokemonImage.image =[UIImage imageNamed:@"mew.png"];
        self.pokemonAttack = [NSMutableArray arrayWithObjects:@"Psychic",@"Aura Sphere",@"Sky Attack",@"Frustration", nil];
    }

}
- (IBAction)onEditButtonTapped:(UIBarButtonItem *)sender
{
    if ([sender.title isEqualToString:@"Edit"]) {
        sender.title = @"Done";
        self.editNameTextField.alpha = 1;
        self.editNameTextField.enabled = true;

    }else
    {
        sender.title = @"Edit";
        self.editNameTextField.alpha = 0;
        self.editNameTextField.enabled = false;

        self.pokemonNameLabel.text = self.editNameTextField.text;
    }

}

#pragma mark - UITableViewDelegate Protocols
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [self.attackTableView dequeueReusableCellWithIdentifier:@"cellID"];

    //MagicalCreature *somePokemon = [self.pokemonAttack objectAtIndex:indexPath.row];

    cell.textLabel.text = [self.pokemonAttack objectAtIndex:indexPath.row];

//    if ([self.attackTableView indexPathForSelectedRow]  == self.selectedIndex)
//    {
//        cell.accessoryType = UITableViewCellAccessoryCheckmark;
//    }


    return cell;
}
//Putting a check mark near cells
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.selectedIndex = indexPath;

     UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];

    if (cell.accessoryType == UITableViewCellAccessoryNone)
    {

        cell.accessoryType = UITableViewCellAccessoryCheckmark;

    }else{
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.pokemonAttack.count;
}

//-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
//    PokemonListViewController *pokemonLVC = [segue destinationViewController];
////    //NSIndexPath *selectedIndexPath = [self.tableView indexPathForSelectedRow];
//   MagicalCreature *changedPokemon = [[MagicalCreature alloc] initWithFullName:self.editNameTextField.text andWithType:nil];
//    pokemonLVC.pokemonName = changedPokemon;
//
//    
//
//    //   //
//// pokemonLVC.pokemonName =
//
//}


@end
