//
//  ViewController.m
//  test
//
//  Created by 余敏侠 on 16/3/18.
//  Copyright © 2016年 secrui Co.,Ltd. All rights reserved.
//

#import "ViewController.h"
#import "myControllerViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIBarButtonItem *barBtn1=[[UIBarButtonItem alloc]initWithTitle:@"左边" style:UIBarButtonItemStylePlain target:self action:@selector(dod)];
    self.navigationItem.leftBarButtonItem = barBtn1;
}

-(void)dod
{
    //获取新视图时必须得先获取到
    myControllerViewController *my = [[myControllerViewController alloc]init];
//    [self.navigationController pushViewController:my animated:YES ];
    myControllerViewController *goodController = [self.storyboard instantiateViewControllerWithIdentifier:@"myControllerViewController" ];
//    [self.navigationController pushViewController:goodController animated:YES];
    [self setModalTransitionStyle:UIModalTransitionStyleCrossDissolve];
    [self presentViewController:my animated:YES completion:nil];
    

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
