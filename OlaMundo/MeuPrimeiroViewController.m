//
//  MeuPrimeiroViewController.m
//  OlaMundo
//
//  Created by Ricardo Cardoso on 02/06/13.
//  Copyright (c) 2013 Ricardo Cardoso. All rights reserved.
//

#import "MeuPrimeiroViewController.h"
#import "MeuSegundoViewController.h"
#import "Utils.h"

@interface MeuPrimeiroViewController ()

@end

@implementation MeuPrimeiroViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Primeiro Controller";
    meuPrimeiroLabel.text = @"Tela iniciada com sucesso!";
    //Indica qie a propria classe implementa o protocolo UITextFieldDelegate para responder aos eventos
    meuSegundoTextField.delegate = self;
    
    
    //Cria a imagem e seta na UIImageView
    UIImage *image = [UIImage imageNamed:@"ferrari_ff.png"];
    imageView.image = image;
    
    //Customizando o botão voltar
    UIBarButtonItem *btVoltar = [[[UIBarButtonItem alloc] initWithTitle:@"Voltar"
                                                style:UIBarButtonItemStyleBordered target:nil action:nil] autorelease];
    self.navigationItem.backBarButtonItem = btVoltar;
}

- (IBAction)olaMundo:(id)sender{
    NSLog(@"Olá");
    meuPrimeiroLabel.text = @"Olá mundo iPhone";
    
    NSString *s = @"Olá ";
    // Alert
    if ([meuPrimeiroTextField.text isEqualToString:@""] ||
        [meuSegundoTextField.text isEqualToString:@""]) {
        UIAlertView *a = [[UIAlertView alloc] initWithTitle:@"Erro" message:@"Digite todos os campos" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
        [a show];
        [a release];
        return;
    }
    //Nome
    s = [s stringByAppendingString:meuPrimeiroTextField.text];
    //Espaço
    s = [s stringByAppendingString:@" "];
    //Sobrenome
    s = [s stringByAppendingString:meuSegundoTextField.text];
    
    //Exibe a mensagem no label
    meuPrimeiroLabel.text   =   s;
    
    [meuPrimeiroTextField resignFirstResponder];
    [meuSegundoTextField resignFirstResponder];
    
    //Cria o segundo controller
    MeuSegundoViewController *segundo = [[MeuSegundoViewController alloc] init];
    //Seta a mensagem
    segundo.msg = s;
    
    [self.navigationController pushViewController:segundo animated:YES];
    // Recupera a UIWindow que gerencia toda as telas do aplicativo
    //    UIWindow *window = [[UIApplication sharedApplication] keyWindow];
    // Adiciona a view do segundo controller na window
    //    UIView *view = segundo.view;
    //    [window addSubview:view];
    
    // Navega como modal
    //    segundo.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    //        [self presentViewController:segundo animated:YES completion:nil];
}

- (IBAction)sliderValueChanger:(id)sender{
    UISlider *slider = sender;
    imageView.alpha = [slider value];
}

// Fecha o teclado virtual ao tocar em qualquer lugar na tela
- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [meuPrimeiroTextField resignFirstResponder];
    [meuSegundoTextField resignFirstResponder];
}

- (BOOL) textFieldShouldReturn:(UITextField *)textField{
    if (textField == meuPrimeiroTextField) {
        //Navega para o proximo campo
        [meuSegundoTextField becomeFirstResponder];
        return YES;
    }else if(textField == meuSegundoTextField){
        //Ultimo campo executa o método olaMundo diretamente
        [self olaMundo:textField];
        return YES;
    }
    return NO;
}

#pragma mark - dealooc
- (void) dealloc
{
    [meuPrimeiroLabel release];
    [meuPrimeiroTextField release];
    [meuSegundoTextField release];
    [imageView release];
    [super dealloc];
}

@end
