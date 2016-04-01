//
//  myControllerViewController.m
//  test
//
//  Created by 余敏侠 on 16/3/18.
//  Copyright © 2016年 secrui Co.,Ltd. All rights reserved.
//

#import "myControllerViewController.h"

@interface myControllerViewController ()

@end

@implementation myControllerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIBarButtonItem *barBtn1=[[UIBarButtonItem alloc]initWithTitle:@"左边" style:UIBarButtonItemStylePlain target:self action:@selector(changeColor)];
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(10, 10, 10, 10)];
    UIImageView *image = [[UIImageView alloc]initWithImage:[UIImage imageNamed: @"640*960.png"]];
    image.frame = CGRectMake(100, 100, 100, 100);

    [view addSubview:image];
    UIBarButtonItem *bar = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"640*960.png"] style:UIBarButtonItemStylePlain target:self action:@selector(changeColor)];

    UIButton *button = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    [button setTitle: @"按钮" forState: UIControlStateNormal];
    [button sizeToFit];
    self.navigationItem.titleView = button;
//    [self.navigationItem setBackBarButtonItem:bar];
    self.navigationItem.leftBarButtonItem = bar;
//    self.navigationItem.titleView = view;

    UIButton *back = [UIButton buttonWithType:UIButtonTypeCustom];
    back.titleLabel.font = [UIFont boldSystemFontOfSize:13];
    [back setTitle:@"Back" forState:UIControlStateNormal];
    [back setFrame:CGRectMake(0, 2, 52, 30)];
    [back setBackgroundImage:[UIImage imageNamed:@"640*960"] forState:UIControlStateNormal];
    [back addTarget:self action:@selector(changeColor) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *barButton = [[UIBarButtonItem alloc] initWithCustomView:back];
    self.navigationItem.leftBarButtonItem = barButton;

    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview: image];
     [self.view addSubview:back];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.


}
-(void)changeColor
{
    NSLog(@"change color");
//    [self.navigationController popViewControllerAnimated:YES];
    [self dismissViewControllerAnimated:YES completion:nil ];

}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
