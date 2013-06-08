//
//  Utils.m
//  OlaMundo
//
//  Created by Ricardo Cardoso on 07/06/13.
//  Copyright (c) 2013 Ricardo Cardoso. All rights reserved.
//

#import "Utils.h"

@interface Utils ()

@end

@implementation Utils


- (void)viewDidLoad
{
    [super viewDidLoad];
	
}

+ (UIView *)getCustomNavBarView:(NSString *)title{
    //Cria a view para customizar a navigation bar
    UIView *view = [[[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 44)]autorelease];
    //Cria o label para titulo
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
    label.text = title;
    label.backgroundColor = [UIColor clearColor];
    label.font = [UIFont boldSystemFontOfSize:10];
    label.textColor = [UIColor blackColor];
    label.textAlignment = NSTextAlignmentCenter;
    
    //Adiciona o label na view
    [view addSubview:label];
    [label release];
    return view;
}

@end
