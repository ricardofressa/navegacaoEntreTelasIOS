//
//  MeuSegundoViewController.h
//  OlaMundo
//
//  Created by Ricardo Cardoso on 06/06/13.
//  Copyright (c) 2013 Ricardo Cardoso. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MeuSegundoViewController : UIViewController{

    IBOutlet UILabel *label;
    NSString *msg;
}

@property (nonatomic, retain) NSString *msg;


- (IBAction)voltar;
@end
