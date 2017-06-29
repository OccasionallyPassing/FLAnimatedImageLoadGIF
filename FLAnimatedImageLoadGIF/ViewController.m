//
//  ViewController.m
//  FLAnimatedImageLoadGIF
//
//  Created by apple on 17/6/29.
//  Copyright © 2017年 Wang. All rights reserved.
//

#import "ViewController.h"
#import "FLAnimatedImage.h"
#import "FLAnimatedImageView.h"
@interface ViewController ()

@property (nonatomic, strong) UIView *showBgView;
@property (nonatomic, strong) FLAnimatedImageView *animatedImgView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.showBgView = [[UIView alloc] initWithFrame:self.view.bounds];
    self.showBgView.center = self.view.center;
    NSURL *imgUrl = [[NSBundle mainBundle] URLForResource:@"rock" withExtension:@"gif"];
    FLAnimatedImage *animatedImg = [FLAnimatedImage animatedImageWithGIFData:[NSData dataWithContentsOfURL:imgUrl]];
    self.animatedImgView = [[FLAnimatedImageView alloc] init];
    self.animatedImgView.animatedImage = animatedImg;
    self.animatedImgView.frame = CGRectMake(0,0,self.view.bounds.size.width,300);
    [self.showBgView addSubview:self.animatedImgView];
    [self.view addSubview:self.showBgView];
    
    //处理执行一次动画结束
//    __weak typeof (self) weakSelf = self;
//    self.animatedImgView.loopCompletionBlock = ^(NSUInteger loopCountRemaining){
//        
//        NSLog(@"%ld",loopCountRemaining);
//        [weakSelf.showBgView removeFromSuperview];
//    };
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
