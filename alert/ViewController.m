//
//  ViewController.m
//  alert
//
//  Created by Komorita Tsuyoshi on 2013/11/12.
//  Copyright (c) 2013年 tikomo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonAlert_click:(id)sender {
    
    NSString * strTitle = @"Title";
    //NSString * strTitle2 = [[NSString alloc] initWithString:@"Hello, World."];
    
    // アラートビューを作成
    // キャンセルボタンを表示しない場合はcancelButtonTitleにnilを指定
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:strTitle
                          message:@"実行しますか？"
                          delegate:self
                          cancelButtonTitle:@"Cancel"
                          otherButtonTitles:@"Button1", @"Button2", nil];
    
    // アラートビューを表示
    [alert show];
    
}

// delegate self
// Alert ダイアログのボタンが押されたとき
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    switch (buttonIndex) {
        case 1: // Button1が押されたとき
            NSLog(@"Button1");
            break;
            
        case 2: // Button2が押されたとき
            NSLog(@"Button2");
            break;
            
        default: // キャンセルが押されたとき
            NSLog(@"Cancel");
            break;
    }
}

@end
