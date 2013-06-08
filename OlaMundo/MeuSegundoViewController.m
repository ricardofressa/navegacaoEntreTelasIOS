//
//  MeuSegundoViewController.m
//  OlaMundo
//
//  Created by Ricardo Cardoso on 06/06/13.
//  Copyright (c) 2013 Ricardo Cardoso. All rights reserved.
//

#import "MeuSegundoViewController.h"

@interface MeuSegundoViewController ()

@end

@implementation MeuSegundoViewController

@synthesize msg;


#pragma mark - View Lifecycle
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //Titulo
    self.title = @"Meu Segundo Controller";
    
    //Copia o conteudo da mensagem "msg" para o label
    label.text = msg;
    
}

#pragma mark - Eventos
-(IBAction)voltar{
    //[self dismissViewControllerAnimated:YES completion:nil];
    
    
    [self.navigationController popToRootViewControllerAnimated:YES];
}

#pragma mark - dealloc
- (void)dealloc{
    //Libera a memória dos objetos
    [label release];
    [msg release];
    msg = nil;
    [super dealloc];
}
@end
