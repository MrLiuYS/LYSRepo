//
//  LYSAliguotsViewController.m
//  LYSRepo
//
//  Created by 刘永生 on 2017/3/9.
//  Copyright © 2017年 3050700400@qq.com. All rights reserved.
//

#import "LYSAliguotsViewController.h"

#import "UIView+LYSAliquots.h"

#import "LYSColor.h"


@interface LYSAliguotsViewController ()





@end

@implementation LYSAliguotsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    {
        
        UIView * view = [[UIView alloc]init];
        view.backgroundColor = [LYSColor randomColor];
        [self.view addSubview:view];
        
        [view mas_makeConstraints:^(MASConstraintMaker *make){
            make.top.mas_equalTo(100);
            make.left.mas_equalTo(10);
            make.right.mas_equalTo(-10);
            make.height.mas_equalTo(90);
        }];
        
        
        NSMutableArray * subViews = [NSMutableArray array];
        for (int index = 0 ; index < 5; index ++) {
            UIView * subView = [[UIView alloc]init];
            subView.backgroundColor = [LYSColor randomColor];
            [subViews addObject:subView];
        }
        
        
        [view lys_AddAliquotsViews:subViews
                         LRpadding:10
                       viewPadding:10
                         direction:LYSAliquotDirection_H];
        
        
    }
    
    {
        
        UIView * view = [[UIView alloc]init];
        view.backgroundColor = [LYSColor randomColor];
        [self.view addSubview:view];
        
        [view mas_makeConstraints:^(MASConstraintMaker *make){
            make.top.mas_equalTo(200);
            make.left.mas_equalTo(10);
            make.right.mas_equalTo(-10);
            make.height.mas_equalTo(90);
        }];
        
        
        NSMutableArray * subViews = [NSMutableArray array];
        for (int index = 0 ; index < 5; index ++) {
            UIView * subView = [[UIView alloc]init];
            subView.backgroundColor = [LYSColor randomColor];
            [subViews addObject:subView];
        }
        
        
        [view lys_AddAliquotsViews:subViews
                         LRpadding:10
                       viewPadding:10
                         direction:LYSAliquotDirection_V];
        
        
    }
    
    
    {
        
        UIView * view = [[UIView alloc]init];
        view.backgroundColor = [LYSColor randomColor];
        [self.view addSubview:view];
        
        [view mas_makeConstraints:^(MASConstraintMaker *make){
            make.top.mas_equalTo(300);
            make.left.mas_equalTo(10);
            make.right.mas_equalTo(-10);
            make.height.mas_equalTo(90);
        }];
        
        
        NSMutableArray * subViews = [NSMutableArray array];
        for (int index = 0 ; index < 5; index ++) {
            UIView * subView = [[UIView alloc]init];
            subView.backgroundColor = [LYSColor randomColor];
            [subViews addObject:subView];
            
            [subView mas_makeConstraints:^(MASConstraintMaker *make){
                make.width.mas_equalTo(30);
                make.height.mas_equalTo(50);
            }];
        }
        
        UIView * contentView = [view lys_AddInsideCenterViews:subViews
                                                  viewPadding:10
                                                 centerOffset:0
                                                    direction:LYSAliquotDirection_H];
        
        contentView.backgroundColor = [LYSColor randomColor];
        
        
    }
    
    {
        
        UIView * view = [[UIView alloc]init];
        view.backgroundColor = [LYSColor randomColor];
        [self.view addSubview:view];
        
        [view mas_makeConstraints:^(MASConstraintMaker *make){
            make.top.mas_equalTo(400);
            make.left.mas_equalTo(10);
            make.right.mas_equalTo(-10);
            make.height.mas_equalTo(90);
        }];
        
        
        NSMutableArray * subViews = [NSMutableArray array];
        for (int index = 0 ; index < 5; index ++) {
            UIView * subView = [[UIView alloc]init];
            subView.backgroundColor = [LYSColor randomColor];
            [subViews addObject:subView];
            
            [subView mas_makeConstraints:^(MASConstraintMaker *make){
                make.width.mas_equalTo(30);
                make.height.mas_equalTo(5);
            }];
        }
        
        UIView * contentView = [view lys_AddInsideCenterViews:subViews
                                                  viewPadding:10
                                                 centerOffset:0
                                                    direction:LYSAliquotDirection_V];
        
        contentView.backgroundColor = [LYSColor randomColor];
        
        
    }
    {
        
        UIView * view = [[UIView alloc]init];
        view.backgroundColor = [LYSColor randomColor];
        [self.view addSubview:view];
        
        [view mas_makeConstraints:^(MASConstraintMaker *make){
            make.top.mas_equalTo(500);
            make.left.mas_equalTo(10);
            make.right.mas_equalTo(-10);
            make.height.mas_equalTo(90);
        }];
        
        
        NSMutableArray * subViews = [NSMutableArray array];
        for (int index = 0 ; index < 5; index ++) {
            UILabel * subView = [[UILabel alloc]init];
            
            subView.backgroundColor = [LYSColor randomColor];
            
            switch (index) {
                case 0:
                    subView.text = @"12234";
                    break;
                case 1:
                    subView.text = @"1212123";
                    break;
                case 2:
                    subView.text = @"123441233";
                    break;
                case 3:
                    subView.text = @"1232341234123";
                    break;
                case 4:
                    subView.text = @"1234aasdf12341234";
                    break;
                default:
                    break;
            }
            
            [subViews addObject:subView];
            
            [subView mas_makeConstraints:^(MASConstraintMaker *make){
                
                make.width.mas_lessThanOrEqualTo(100);
                
                make.height.mas_equalTo(50);
                
            }];
        }
        
        UIView * contentView = [view lys_AddInsideCenterViews:subViews
                                                  viewPadding:10
                                                 centerOffset:0
                                                    direction:LYSAliquotDirection_H];
        
        contentView.backgroundColor = [LYSColor randomColor];
        
        
    }
    
    
    
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
