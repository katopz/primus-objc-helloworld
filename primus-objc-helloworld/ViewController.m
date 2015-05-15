//
//  ViewController.m
//  primus-objc-helloworld
//
//  Created by katopz on 5/15/2558 BE.
//  Copyright (c) 2558 Debokeh. All rights reserved.
//

#import "ViewController.h"
#import <Primus/Primus.h>
#import <Primus/SocketRocketClient.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self start];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)start
{
    NSURL *url = [NSURL URLWithString:@"http://127.0.0.1:8080/primus"];
    
    PrimusConnectOptions *options = [[PrimusConnectOptions alloc] init];
    
    options.transformerClass = SocketRocketClient.class;
    options.strategy = @[@(kPrimusReconnectionStrategyTimeout)];
    options.timeout = 200;
    options.manual = YES;
    
    Primus *primus = [[Primus alloc] initWithURL:url options:options];
    
    [primus on:@"reconnect" listener:^(PrimusReconnectOptions *options) {
        NSLog(@"[reconnect] - We are scheduling a new reconnect attempt");
    }];
    
    [primus on:@"online" listener:^{
        NSLog(@"[network] - We have regained control over our internet connection.");
    }];
    
    [primus on:@"offline" listener:^{
        NSLog(@"[network] - We lost our internet connection.");
    }];
    
    [primus on:@"open" listener:^{
        NSLog(@"[open] - The connection has been established.");
    }];
    
    [primus on:@"error" listener:^(NSError *error) {
        NSLog(@"[error] - Error: %@", error);
    }];
    
    [primus on:@"data" listener:^(NSDictionary *data, id raw) {
        NSLog(@"[data] - Received data: %@", data);
    }];
    
    [primus on:@"end" listener:^{
        NSLog(@"[end] - The connection has ended.");
    }];
    
    [primus on:@"close" listener:^{
        NSLog(@"[close] - We've lost the connection to the server.");
    }];
    
    [primus open];
}

@end
