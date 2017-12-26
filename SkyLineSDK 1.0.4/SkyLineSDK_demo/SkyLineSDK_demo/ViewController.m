//
//  ViewController.m
//  SkyLineSDK_demo
//
//  Created by skyline on 2017/12/11.
//  Copyright © 2017年 skyline. All rights reserved.
//

#import "ViewController.h"
#import <SkyLineSDK/SkyLineSDK.h>
@interface ViewController ()<SkyLineManagerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addBtn];

    // Do any additional setup after loading the view, typically from a nib.
}
- (void)addBtn
{
    
    CGFloat x = 20;
    CGFloat H = 44;
    CGFloat W = 100;
    for (int i = 0; i < 2; i++)
    {
        NSString *title = (i == 0)?@"登陆":@"支付";
        
        UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(x, 100 + (x + H) * i, W, H)];
        [button addTarget:self action:@selector(actionForBtn:) forControlEvents:UIControlEventTouchUpInside];
        [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [button setBackgroundColor:[UIColor whiteColor]];
        [button setTitle:title forState:UIControlStateNormal];
        button.layer.cornerRadius = 5;
        button.layer.borderColor = [UIColor lightGrayColor].CGColor;
        button.layer.borderWidth = 0.5;
        button.layer.masksToBounds = YES;
        button.tag = 200 + i;
        [self.view addSubview:button];
    }
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"~~~~~~~~~~~~~touching");
}

- (void)actionForBtn:(UIButton *)sender
{
    
    if (sender.tag == 200)
    {
        SkyLineManager *skyline = [SkyLineManager shareManager];
        skyline.delegate = self;
        [SkyLineManager prepareLogin];
    }
    else{
        SkyLineProduct *product = [[SkyLineProduct alloc]init];
        product.goodsID = @"com.skyline.com.youhui.zuanshi";//必传
        product.goodsTitle = @"测试商品标题";//必传
        product.goodsPrice = @"0.01";//必传
        product.notifyURL = @"http://192.168.1.25:81/api/gamecallback.php";//必传
        product.serverID = @"服务器ID";
        product.serverName = @"服务器名字";
        [SkyLineManager preparePay:product];
    }
}


#pragma mark - SkyLineManagerDelegate
- (void)receiveCallBack:(NSDictionary *)callback
{
    NSLog(@"游戏方 dict %@ \n",callback);
    NSString *account = [[SkyLineManager shareManager] account];
    NSString *accountid = [[SkyLineManager shareManager] accountID];
    NSString *token =[[SkyLineManager shareManager] token];
    NSLog(@"name %@  id %@  token %@",account, accountid, token);
}

- (void)registerCallBack:(int)code
{
    NSLog(@"code  %d",code);
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
