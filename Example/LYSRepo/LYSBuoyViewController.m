//
//  LYSBuoyViewController.m
//  LYSRepo
//
//  Created by 刘永生 on 2017/3/13.
//  Copyright © 2017年 3050700400@qq.com. All rights reserved.
//

#import "LYSBuoyViewController.h"

#import "LYSBuoy.h"


@interface LYSBuoyViewController ()

@end


@implementation LYSBuoyViewController


- (void)dealloc {
    NSLog(@"移除LYSBuoyViewController");
    
    
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    GLYSBuoy.hiddenView(NO);
    
    
    
}



- (void)viewDidDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
    GLYSBuoy.hiddenView(YES);
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    GLYSBuoy.image([UIImage imageNamed:@"buoy"]).show();
    
    [GLYSBuoy clickBuoy:^{
        
        NSLog(@"点击");
        
    }];
    
    GLYSBuoy.embed(10);



    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
