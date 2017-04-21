//
//  ViewController.m
//  cal_basicapp
//
//  Created by venuka maddukuri on 2017-04-20.
//  Copyright © 2017 venuka maddukuri. All rights reserved.
//

#import "ViewController.h"
typedef enum{ Plus,Minus,Multiply,Divide} CalcOperation;

@interface ViewController ()
@end

@implementation ViewController
     NSString *storage;

    CalcOperation operation;
    //int storage;
    int val;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)calResult:(id)sender {
    if ([sender isKindOfClass:[UIButton class]]) {
        UIButton *btn = (UIButton *)sender;
        if([btn tag] == 0){
            _display.text = [NSString stringWithFormat:@"%@0",_display.text];
        }
        if([btn tag] == 1){
            NSLog(@"1 button clicked");
            _display.text=@"1";
            //_display.text = [NSString stringWithFormat:@"%@1",_display.text];

        }
        if([btn tag] == 2){
            NSLog(@"2 button clicked");
            _display.text = [NSString stringWithFormat:@"%@2",_display.text];

        }
        if([btn tag] == 3){
            NSLog(@"3 button clicked");
            _display.text = [NSString stringWithFormat:@"%@3",_display.text];

        }
        if([btn tag] == 4){
            NSLog(@"4 button clicked");
            _display.text = [NSString stringWithFormat:@"%@4",_display.text];

        }
        if([btn tag] == 5){
            NSLog(@"5 button clicked");
            _display.text = [NSString stringWithFormat:@"%@5",_display.text];

        }
        if([btn tag] == 6){
            NSLog(@"6 button clicked");
            _display.text = [NSString stringWithFormat:@"%@6",_display.text];

        }
        if([btn tag] == 7){
            NSLog(@"7 button clicked");
            _display.text = [NSString stringWithFormat:@"%@7",_display.text];

        }
        if([btn tag] == 8){
            NSLog(@"8 button clicked");
            _display.text = [NSString stringWithFormat:@"%@8",_display.text];

        }
        if([btn tag] == 9){
            NSLog(@"9 button clicked");
            _display.text = [NSString stringWithFormat:@"%@9",_display.text];
        }
    }
}
- (IBAction)clrBtn:(id)sender {
    NSLog(@"clear button clicked");
    _display.text = @"0";
}

- (IBAction)btnAdd:(id)sender{
    NSLog(@"%@", storage);
    operation= Plus;
     storage=_display.text;
    _display.text=@"";
    
}

- (IBAction)btnSbtrct:(id)sender{
    NSLog(@"%@", storage);
    operation = Minus;
     storage=_display.text;
    _display.text=@"";
}

- (IBAction)btnMultiply:(id)sender{
    NSLog(@"%@", storage);
    operation = Multiply;
     storage=_display.text;
    _display.text=@"";
}

- (IBAction)BtnDivide:(id)sender{
    NSLog(@"%@", storage);
    operation = Divide;
     storage=_display.text;
    _display.text=@"";
}

- (IBAction)btnEquals:(id)sender{
    NSString *val = _display.text;
    NSLog(@"%@", val);
    switch(operation) {
        case Plus :
        _display.text= [NSString stringWithFormat:@"%qi",[val longLongValue]+[storage longLongValue]];
        break;
        case Minus:
        _display.text=[NSString stringWithFormat:@"%qi",[storage longLongValue]-[val longLongValue]];
        break;
        case Divide:
        _display.text=[NSString stringWithFormat:@"%qi",[storage longLongValue]/[val longLongValue]];
        break;
        case Multiply:
        _display.text= [NSString stringWithFormat:@"%qi",[val longLongValue ]*[storage longLongValue]];
        break;
    }
}


@end
