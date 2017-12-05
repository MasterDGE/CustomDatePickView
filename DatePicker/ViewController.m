//
//  ViewController.m
//  DatePicker
//
//  Created by Zax on 2017/12/4.
//  Copyright © 2017年 Shirley. All rights reserved.
//

#import "ViewController.h"
#import "UIDateTimePickerView.h"
#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)


@interface ViewController ()
{
    UIDateTimePickerView *dateTimePicker;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    if (!dateTimePicker)
    {
        dateTimePicker = [UIDateTimePickerView UIDateTimePickerViewInitWithFrame:CGRectMake(0, SCREEN_HEIGHT / 3 * 2, SCREEN_WIDTH, SCREEN_HEIGHT / 3)  BeganTime:[NSDate dateWithTimeIntervalSince1970:1271952000] WithEndTime:[NSDate date]];
    } else
    {
        [dateTimePicker showDatePicker];
    }
}
@end
