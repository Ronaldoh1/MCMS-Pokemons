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

@property (weak, nonatomic) IBOutlet UIImageView *pokemonImage;
@property (weak, nonatomic) IBOutlet UILabel *pokemonNameLabel;
@property (weak, nonatomic) IBOutlet UITextField *editNameTextField;
@end

@implementation PokemonDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.pokemonNameLabel.text = self.selectedPokemon.name;

    if ([self.selectedPokemon.name isEqualToString:@"Pikachu"]) {

        self.pokemonImage.image =[UIImage imageNamed:@"pikachu.png"];


    } else if ([self.selectedPokemon.name isEqualToString:@"Dratini"]){
        self.pokemonImage.image =[UIImage imageNamed:@"dratini.png"];

    }else if ([self.selectedPokemon.name isEqualToString:@"Mew"]){

        self.pokemonImage.image =[UIImage imageNamed:@"mew.png"];
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
    }

}




@end
