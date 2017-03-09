//
//  UIView+LYSAliquots.m
//  LYSRepo
//
//  Created by 刘永生 on 2017/3/9.
//  Copyright © 2017年 3050700400@qq.com. All rights reserved.
//

#import "UIView+LYSAliquots.h"

@implementation UIView (LYSAliquots)


- (void)lys_AddliquotsViews:(NSArray<UIView *> *)views
                  LRpadding:(CGFloat)LRpadding
                viewPadding:(CGFloat)viewPadding
                  direction:(LYSAliquotDirection)direction{
    
    UIView *lastView;
    for (UIView *view in views) {
        [self addSubview:view];
        if (lastView) {
            [view mas_makeConstraints:^(MASConstraintMaker *make) {
                if (direction == LYSAliquotDirection_H) {
                    make.top.bottom.equalTo(self);
                    make.left.equalTo(lastView.mas_right).offset(viewPadding);
                    make.width.equalTo(lastView);
                }else {
                    make.left.right.equalTo(self);
                    make.top.equalTo(lastView.mas_bottom).offset(viewPadding);
                    make.height.equalTo(lastView);
                }
            }];
        }else
        {
            [view mas_makeConstraints:^(MASConstraintMaker *make) {
                if (direction == LYSAliquotDirection_H) {
                    make.left.equalTo(self).offset(LRpadding);
                    make.top.bottom.equalTo(self);
                }else {
                    make.top.equalTo(self).offset(LRpadding);
                    make.left.right.equalTo(self);
                }
            }];
        }
        lastView=view;
    }
    [lastView mas_makeConstraints:^(MASConstraintMaker *make) {
        if (direction == LYSAliquotDirection_H) {
            make.right.equalTo(self).offset(-LRpadding);
        }else {
            make.bottom.equalTo(self).offset(-LRpadding);
        }
    }];
    
    
}



@end
